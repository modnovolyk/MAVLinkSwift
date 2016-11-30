//
//  MountControlArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Message to control a camera mount, directional antenna, etc.
public struct MountControl {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// pitch(deg*100) or lat, depending on mount mode
	public let inputA: Int32

	/// roll(deg*100) or lon depending on mount mode
	public let inputB: Int32

	/// yaw(deg*100) or alt (in cm) depending on mount mode
	public let inputC: Int32

	/// if "1" it will save current trimmed position on EEPROM (just valid for NEUTRAL and LANDING)
	public let savePosition: UInt8
}

extension MountControl: Message {
    public static let id = UInt8(157)
    public static var typeName = "MOUNT_CONTROL"
    public static var typeDescription = "Message to control a camera mount, directional antenna, etc."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 12, "UInt8", 0, "System ID"), ("targetComponent", 13, "UInt8", 0, "Component ID"), ("inputA", 0, "Int32", 0, "pitch(deg*100) or lat, depending on mount mode"), ("inputB", 4, "Int32", 0, "roll(deg*100) or lon depending on mount mode"), ("inputC", 8, "Int32", 0, "yaw(deg*100) or alt (in cm) depending on mount mode"), ("savePosition", 14, "UInt8", 0, "if \"1\" it will save current trimmed position on EEPROM (just valid for NEUTRAL and LANDING)")]

    public init(data: Data) throws {
		inputA = try data.number(at: 0)
		inputB = try data.number(at: 4)
		inputC = try data.number(at: 8)
		targetSystem = try data.number(at: 12)
		targetComponent = try data.number(at: 13)
		savePosition = try data.number(at: 14)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 15)
		try payload.set(inputA, at: 0)
		try payload.set(inputB, at: 4)
		try payload.set(inputC, at: 8)
		try payload.set(targetSystem, at: 12)
		try payload.set(targetComponent, at: 13)
		try payload.set(savePosition, at: 14)
        return payload
    }
}
