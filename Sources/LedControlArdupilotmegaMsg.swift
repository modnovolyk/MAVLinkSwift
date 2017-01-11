//
//  LedControlArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Control vehicle LEDs
public struct LedControl {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Instance (LED instance to control or 255 for all LEDs)
	public let instance: UInt8

	/// Pattern (see LED_PATTERN_ENUM)
	public let pattern: UInt8

	/// Custom Byte Length
	public let customLen: UInt8

	/// Custom Bytes
	public let customBytes: [UInt8]
}

extension LedControl: Message {
    public static let id = UInt8(186)
    public static var typeName = "LED_CONTROL"
    public static var typeDescription = "Control vehicle LEDs"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("instance", 2, "UInt8", 0, "Instance (LED instance to control or 255 for all LEDs)"), ("pattern", 3, "UInt8", 0, "Pattern (see LED_PATTERN_ENUM)"), ("customLen", 4, "UInt8", 0, "Custom Byte Length"), ("customBytes", 5, "[UInt8]", 24, "Custom Bytes")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		instance = try data.number(at: 2)
		pattern = try data.number(at: 3)
		customLen = try data.number(at: 4)
		customBytes = try data.array(at: 5, capacity: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 29)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(instance, at: 2)
		try payload.set(pattern, at: 3)
		try payload.set(customLen, at: 4)
		try payload.set(customBytes, at: 5, capacity: 24)
        return payload
    }
}
