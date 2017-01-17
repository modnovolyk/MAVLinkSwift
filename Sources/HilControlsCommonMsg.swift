//
//  HilControlsCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Sent from autopilot to simulation. Hardware in the loop control outputs
public struct HilControls {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// Control output -1 .. 1
	public let rollAilerons: Float

	/// Control output -1 .. 1
	public let pitchElevator: Float

	/// Control output -1 .. 1
	public let yawRudder: Float

	/// Throttle 0 .. 1
	public let throttle: Float

	/// Aux 1, -1 .. 1
	public let aux1: Float

	/// Aux 2, -1 .. 1
	public let aux2: Float

	/// Aux 3, -1 .. 1
	public let aux3: Float

	/// Aux 4, -1 .. 1
	public let aux4: Float

	/// System mode (MAV_MODE)
	public let mode: UInt8

	/// Navigation mode (MAV_NAV_MODE)
	public let navMode: UInt8
}

extension HilControls: Message {
    public static let id = UInt8(91)
    public static var typeName = "HIL_CONTROLS"
    public static var typeDescription = "Sent from autopilot to simulation. Hardware in the loop control outputs"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("rollAilerons", 8, "Float", 0, "Control output -1 .. 1"), ("pitchElevator", 12, "Float", 0, "Control output -1 .. 1"), ("yawRudder", 16, "Float", 0, "Control output -1 .. 1"), ("throttle", 20, "Float", 0, "Throttle 0 .. 1"), ("aux1", 24, "Float", 0, "Aux 1, -1 .. 1"), ("aux2", 28, "Float", 0, "Aux 2, -1 .. 1"), ("aux3", 32, "Float", 0, "Aux 3, -1 .. 1"), ("aux4", 36, "Float", 0, "Aux 4, -1 .. 1"), ("mode", 40, "UInt8", 0, "System mode (MAV_MODE)"), ("navMode", 41, "UInt8", 0, "Navigation mode (MAV_NAV_MODE)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		rollAilerons = try data.number(at: 8)
		pitchElevator = try data.number(at: 12)
		yawRudder = try data.number(at: 16)
		throttle = try data.number(at: 20)
		aux1 = try data.number(at: 24)
		aux2 = try data.number(at: 28)
		aux3 = try data.number(at: 32)
		aux4 = try data.number(at: 36)
		mode = try data.number(at: 40)
		navMode = try data.number(at: 41)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(timeUsec, at: 0)
		try payload.set(rollAilerons, at: 8)
		try payload.set(pitchElevator, at: 12)
		try payload.set(yawRudder, at: 16)
		try payload.set(throttle, at: 20)
		try payload.set(aux1, at: 24)
		try payload.set(aux2, at: 28)
		try payload.set(aux3, at: 32)
		try payload.set(aux4, at: 36)
		try payload.set(mode, at: 40)
		try payload.set(navMode, at: 41)
        return payload
    }
}
