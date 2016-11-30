//
//  LocalPositionNEDSystemGlobalOffsetCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of MAV X and the global coordinate frame in NED coordinates. Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)
public struct LocalPositionNEDSystemGlobalOffset {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// X Position
	public let x: Float

	/// Y Position
	public let y: Float

	/// Z Position
	public let z: Float

	/// Roll
	public let roll: Float

	/// Pitch
	public let pitch: Float

	/// Yaw
	public let yaw: Float
}

extension LocalPositionNEDSystemGlobalOffset: Message {
    public static let id = UInt8(89)
    public static var typeName = "LOCAL_POSITION_NED_SYSTEM_GLOBAL_OFFSET"
    public static var typeDescription = "The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of MAV X and the global coordinate frame in NED coordinates. Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("x", 4, "Float", 0, "X Position"), ("y", 8, "Float", 0, "Y Position"), ("z", 12, "Float", 0, "Z Position"), ("roll", 16, "Float", 0, "Roll"), ("pitch", 20, "Float", 0, "Pitch"), ("yaw", 24, "Float", 0, "Yaw")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		x = try data.number(at: 4)
		y = try data.number(at: 8)
		z = try data.number(at: 12)
		roll = try data.number(at: 16)
		pitch = try data.number(at: 20)
		yaw = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(timeBootMs, at: 0)
		try payload.set(x, at: 4)
		try payload.set(y, at: 8)
		try payload.set(z, at: 12)
		try payload.set(roll, at: 16)
		try payload.set(pitch, at: 20)
		try payload.set(yaw, at: 24)
        return payload
    }
}
