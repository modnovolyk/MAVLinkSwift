//
//  SetMagOffsetsArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Deprecated. Use MAV_CMD_PREFLIGHT_SET_SENSOR_OFFSETS instead. Set the magnetometer offsets
public struct SetMagOffsets {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// magnetometer X offset
	public let magOfsX: Int16

	/// magnetometer Y offset
	public let magOfsY: Int16

	/// magnetometer Z offset
	public let magOfsZ: Int16
}

extension SetMagOffsets: Message {
    public static let id = UInt8(151)
    public static var typeName = "SET_MAG_OFFSETS"
    public static var typeDescription = "Deprecated. Use MAV_CMD_PREFLIGHT_SET_SENSOR_OFFSETS instead. Set the magnetometer offsets"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 6, "UInt8", 0, "System ID"), ("targetComponent", 7, "UInt8", 0, "Component ID"), ("magOfsX", 0, "Int16", 0, "magnetometer X offset"), ("magOfsY", 2, "Int16", 0, "magnetometer Y offset"), ("magOfsZ", 4, "Int16", 0, "magnetometer Z offset")]

    public init(data: Data) throws {
		magOfsX = try data.number(at: 0)
		magOfsY = try data.number(at: 2)
		magOfsZ = try data.number(at: 4)
		targetSystem = try data.number(at: 6)
		targetComponent = try data.number(at: 7)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(magOfsX, at: 0)
		try payload.set(magOfsY, at: 2)
		try payload.set(magOfsZ, at: 4)
		try payload.set(targetSystem, at: 6)
		try payload.set(targetComponent, at: 7)
        return payload
    }
}
