//
//  MissionItemCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Message encoding a mission item. This message is emitted to announce the presence of a mission item and to set a mission item on the system. The mission item can be either in x, y, z meters (type: LOCAL) or x:lat, y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame is Z-up, right handed (ENU). See also http://qgroundcontrol.org/mavlink/waypoint_protocol.
public struct MissionItem {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Sequence
	public let seq: UInt16

	/// The coordinate system of the MISSION. see MAV_FRAME in mavlink_types.h
	public let frame: UInt8

	/// The scheduled action for the MISSION. see MAV_CMD in common.xml MAVLink specs
	public let command: UInt16

	/// false:0, true:1
	public let current: UInt8

	/// autocontinue to next wp
	public let autocontinue: UInt8

	/// PARAM1, see MAV_CMD enum
	public let param1: Float

	/// PARAM2, see MAV_CMD enum
	public let param2: Float

	/// PARAM3, see MAV_CMD enum
	public let param3: Float

	/// PARAM4, see MAV_CMD enum
	public let param4: Float

	/// PARAM5 / local: x position, global: latitude
	public let x: Float

	/// PARAM6 / y position: global: longitude
	public let y: Float

	/// PARAM7 / z position: global: altitude (relative or absolute, depending on frame.
	public let z: Float
}

extension MissionItem: Message {
    public static let id = UInt8(39)
    public static var typeName = "MISSION_ITEM"
    public static var typeDescription = "Message encoding a mission item. This message is emitted to announce the presence of a mission item and to set a mission item on the system. The mission item can be either in x, y, z meters (type: LOCAL) or x:lat, y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame is Z-up, right handed (ENU). See also http://qgroundcontrol.org/mavlink/waypoint_protocol."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 32, "UInt8", 0, "System ID"), ("targetComponent", 33, "UInt8", 0, "Component ID"), ("seq", 28, "UInt16", 0, "Sequence"), ("frame", 34, "UInt8", 0, "The coordinate system of the MISSION. see MAV_FRAME in mavlink_types.h"), ("command", 30, "UInt16", 0, "The scheduled action for the MISSION. see MAV_CMD in common.xml MAVLink specs"), ("current", 35, "UInt8", 0, "false:0, true:1"), ("autocontinue", 36, "UInt8", 0, "autocontinue to next wp"), ("param1", 0, "Float", 0, "PARAM1, see MAV_CMD enum"), ("param2", 4, "Float", 0, "PARAM2, see MAV_CMD enum"), ("param3", 8, "Float", 0, "PARAM3, see MAV_CMD enum"), ("param4", 12, "Float", 0, "PARAM4, see MAV_CMD enum"), ("x", 16, "Float", 0, "PARAM5 / local: x position, global: latitude"), ("y", 20, "Float", 0, "PARAM6 / y position: global: longitude"), ("z", 24, "Float", 0, "PARAM7 / z position: global: altitude (relative or absolute, depending on frame.")]

    public init(data: Data) throws {
		param1 = try data.number(at: 0)
		param2 = try data.number(at: 4)
		param3 = try data.number(at: 8)
		param4 = try data.number(at: 12)
		x = try data.number(at: 16)
		y = try data.number(at: 20)
		z = try data.number(at: 24)
		seq = try data.number(at: 28)
		command = try data.number(at: 30)
		targetSystem = try data.number(at: 32)
		targetComponent = try data.number(at: 33)
		frame = try data.number(at: 34)
		current = try data.number(at: 35)
		autocontinue = try data.number(at: 36)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 37)
		try payload.set(param1, at: 0)
		try payload.set(param2, at: 4)
		try payload.set(param3, at: 8)
		try payload.set(param4, at: 12)
		try payload.set(x, at: 16)
		try payload.set(y, at: 20)
		try payload.set(z, at: 24)
		try payload.set(seq, at: 28)
		try payload.set(command, at: 30)
		try payload.set(targetSystem, at: 32)
		try payload.set(targetComponent, at: 33)
		try payload.set(frame, at: 34)
		try payload.set(current, at: 35)
		try payload.set(autocontinue, at: 36)
        return payload
    }
}
