//
//  ManualSetpointCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Setpoint in roll, pitch, yaw and thrust from the operator
public struct ManualSetpoint {

	/// Timestamp in milliseconds since system boot
	public let timeBootMs: UInt32

	/// Desired roll rate in radians per second
	public let roll: Float

	/// Desired pitch rate in radians per second
	public let pitch: Float

	/// Desired yaw rate in radians per second
	public let yaw: Float

	/// Collective thrust, normalized to 0 .. 1
	public let thrust: Float

	/// Flight mode switch position, 0.. 255
	public let modeSwitch: UInt8

	/// Override mode switch position, 0.. 255
	public let manualOverrideSwitch: UInt8
}

extension ManualSetpoint: Message {
    public static let id = UInt8(81)
    public static var typeName = "MANUAL_SETPOINT"
    public static var typeDescription = "Setpoint in roll, pitch, yaw and thrust from the operator"
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp in milliseconds since system boot"), ("roll", 4, "Float", 0, "Desired roll rate in radians per second"), ("pitch", 8, "Float", 0, "Desired pitch rate in radians per second"), ("yaw", 12, "Float", 0, "Desired yaw rate in radians per second"), ("thrust", 16, "Float", 0, "Collective thrust, normalized to 0 .. 1"), ("modeSwitch", 20, "UInt8", 0, "Flight mode switch position, 0.. 255"), ("manualOverrideSwitch", 21, "UInt8", 0, "Override mode switch position, 0.. 255")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		roll = try data.number(at: 4)
		pitch = try data.number(at: 8)
		yaw = try data.number(at: 12)
		thrust = try data.number(at: 16)
		modeSwitch = try data.number(at: 20)
		manualOverrideSwitch = try data.number(at: 21)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 22)
		try payload.set(timeBootMs, at: 0)
		try payload.set(roll, at: 4)
		try payload.set(pitch, at: 8)
		try payload.set(yaw, at: 12)
		try payload.set(thrust, at: 16)
		try payload.set(modeSwitch, at: 20)
		try payload.set(manualOverrideSwitch, at: 21)
        return payload
    }
}
