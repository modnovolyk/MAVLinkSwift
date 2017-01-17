//
//  CommandIntCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Message encoding a command with parameters as scaled integers. Scaling depends on the actual command value.
public struct CommandInt {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// The coordinate system of the COMMAND. see MAV_FRAME in mavlink_types.h
	public let frame: UInt8

	/// The scheduled action for the mission item. see MAV_CMD in common.xml MAVLink specs
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

	/// PARAM5 / local: x position in meters * 1e4, global: latitude in degrees * 10^7
	public let x: Int32

	/// PARAM6 / local: y position in meters * 1e4, global: longitude in degrees * 10^7
	public let y: Int32

	/// PARAM7 / z position: global: altitude in meters (relative or absolute, depending on frame.
	public let z: Float
}

extension CommandInt: Message {
    public static let id = UInt8(75)
    public static var typeName = "COMMAND_INT"
    public static var typeDescription = "Message encoding a command with parameters as scaled integers. Scaling depends on the actual command value."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 30, "UInt8", 0, "System ID"), ("targetComponent", 31, "UInt8", 0, "Component ID"), ("frame", 32, "UInt8", 0, "The coordinate system of the COMMAND. see MAV_FRAME in mavlink_types.h"), ("command", 28, "UInt16", 0, "The scheduled action for the mission item. see MAV_CMD in common.xml MAVLink specs"), ("current", 33, "UInt8", 0, "false:0, true:1"), ("autocontinue", 34, "UInt8", 0, "autocontinue to next wp"), ("param1", 0, "Float", 0, "PARAM1, see MAV_CMD enum"), ("param2", 4, "Float", 0, "PARAM2, see MAV_CMD enum"), ("param3", 8, "Float", 0, "PARAM3, see MAV_CMD enum"), ("param4", 12, "Float", 0, "PARAM4, see MAV_CMD enum"), ("x", 16, "Int32", 0, "PARAM5 / local: x position in meters * 1e4, global: latitude in degrees * 10^7"), ("y", 20, "Int32", 0, "PARAM6 / local: y position in meters * 1e4, global: longitude in degrees * 10^7"), ("z", 24, "Float", 0, "PARAM7 / z position: global: altitude in meters (relative or absolute, depending on frame.")]

    public init(data: Data) throws {
		param1 = try data.number(at: 0)
		param2 = try data.number(at: 4)
		param3 = try data.number(at: 8)
		param4 = try data.number(at: 12)
		x = try data.number(at: 16)
		y = try data.number(at: 20)
		z = try data.number(at: 24)
		command = try data.number(at: 28)
		targetSystem = try data.number(at: 30)
		targetComponent = try data.number(at: 31)
		frame = try data.number(at: 32)
		current = try data.number(at: 33)
		autocontinue = try data.number(at: 34)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 35)
		try payload.set(param1, at: 0)
		try payload.set(param2, at: 4)
		try payload.set(param3, at: 8)
		try payload.set(param4, at: 12)
		try payload.set(x, at: 16)
		try payload.set(y, at: 20)
		try payload.set(z, at: 24)
		try payload.set(command, at: 28)
		try payload.set(targetSystem, at: 30)
		try payload.set(targetComponent, at: 31)
		try payload.set(frame, at: 32)
		try payload.set(current, at: 33)
		try payload.set(autocontinue, at: 34)
        return payload
    }
}
