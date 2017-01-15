//
//  GoproSetRequestArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request to set a GOPRO_COMMAND with a desired
public struct GoproSetRequest {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Command ID
	public let cmdId: GoproCommand

	/// Value
	public let value: [UInt8]
}

extension GoproSetRequest: Message {
    public static let id = UInt8(218)
    public static var typeName = "GOPRO_SET_REQUEST"
    public static var typeDescription = "Request to set a GOPRO_COMMAND with a desired"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("cmdId", 2, "GoproCommand", 0, "Command ID"), ("value", 3, "[UInt8]", 4, "Value")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		cmdId = try data.enumeration(at: 2)
		value = try data.array(at: 3, capacity: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 7)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(cmdId, at: 2)
		try payload.set(value, at: 3, capacity: 4)
        return payload
    }
}
