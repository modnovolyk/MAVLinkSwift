//
//  HeartbeatCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The heartbeat message shows that a system is present and responding. The type of the MAV and Autopilot hardware allow the receiving system to treat further messages from this system appropriate (e.g. by laying out the user interface based on the autopilot).
public struct Heartbeat {

	/// Type of the MAV (quadrotor, helicopter, etc., up to 15 types, defined in MAV_TYPE ENUM)
	public let type: UInt8

	/// Autopilot type / class. defined in MAV_AUTOPILOT ENUM
	public let autopilot: UInt8

	/// System mode bitfield, see MAV_MODE_FLAG ENUM in mavlink/include/mavlink_types.h
	public let baseMode: UInt8

	/// A bitfield for use for autopilot-specific flags.
	public let customMode: UInt32

	/// System status flag, see MAV_STATE ENUM
	public let systemStatus: UInt8

	/// MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version
	public let mavlinkVersion: UInt8
}

extension Heartbeat: Message {
    public static let id = UInt8(0)
    public static var typeName = "HEARTBEAT"
    public static var typeDescription = "The heartbeat message shows that a system is present and responding. The type of the MAV and Autopilot hardware allow the receiving system to treat further messages from this system appropriate (e.g. by laying out the user interface based on the autopilot)."
    public static var fieldDefinitions: [FieldDefinition] = [("type", 4, "UInt8", 0, "Type of the MAV (quadrotor, helicopter, etc., up to 15 types, defined in MAV_TYPE ENUM)"), ("autopilot", 5, "UInt8", 0, "Autopilot type / class. defined in MAV_AUTOPILOT ENUM"), ("baseMode", 6, "UInt8", 0, "System mode bitfield, see MAV_MODE_FLAG ENUM in mavlink/include/mavlink_types.h"), ("customMode", 0, "UInt32", 0, "A bitfield for use for autopilot-specific flags."), ("systemStatus", 7, "UInt8", 0, "System status flag, see MAV_STATE ENUM"), ("mavlinkVersion", 8, "UInt8", 0, "MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version")]

    public init(data: Data) throws {
		customMode = try data.number(at: 0)
		type = try data.number(at: 4)
		autopilot = try data.number(at: 5)
		baseMode = try data.number(at: 6)
		systemStatus = try data.number(at: 7)
		mavlinkVersion = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 9)
		try payload.set(customMode, at: 0)
		try payload.set(type, at: 4)
		try payload.set(autopilot, at: 5)
		try payload.set(baseMode, at: 6)
		try payload.set(systemStatus, at: 7)
		try payload.set(mavlinkVersion, at: 8)
        return payload
    }
}
