//
//  AttitudeCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right).
public struct Attitude {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Roll angle (rad, -pi..+pi)
	public let roll: Float

	/// Pitch angle (rad, -pi..+pi)
	public let pitch: Float

	/// Yaw angle (rad, -pi..+pi)
	public let yaw: Float

	/// Roll angular speed (rad/s)
	public let rollspeed: Float

	/// Pitch angular speed (rad/s)
	public let pitchspeed: Float

	/// Yaw angular speed (rad/s)
	public let yawspeed: Float
}

extension Attitude: Message {
    public static let id = UInt8(30)
    public static var typeName = "ATTITUDE"
    public static var typeDescription = "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("roll", 4, "Float", 0, "Roll angle (rad, -pi..+pi)"), ("pitch", 8, "Float", 0, "Pitch angle (rad, -pi..+pi)"), ("yaw", 12, "Float", 0, "Yaw angle (rad, -pi..+pi)"), ("rollspeed", 16, "Float", 0, "Roll angular speed (rad/s)"), ("pitchspeed", 20, "Float", 0, "Pitch angular speed (rad/s)"), ("yawspeed", 24, "Float", 0, "Yaw angular speed (rad/s)")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		roll = try data.number(at: 4)
		pitch = try data.number(at: 8)
		yaw = try data.number(at: 12)
		rollspeed = try data.number(at: 16)
		pitchspeed = try data.number(at: 20)
		yawspeed = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(timeBootMs, at: 0)
		try payload.set(roll, at: 4)
		try payload.set(pitch, at: 8)
		try payload.set(yaw, at: 12)
		try payload.set(rollspeed, at: 16)
		try payload.set(pitchspeed, at: 20)
		try payload.set(yawspeed, at: 24)
        return payload
    }
}
