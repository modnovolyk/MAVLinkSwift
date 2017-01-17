//
//  GoproGetRequestArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request a GOPRO_COMMAND response from the GoPro
public struct GoproGetRequest {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Command ID
	public let cmdId: GoproCommand
}

extension GoproGetRequest: Message {
    public static let id = UInt8(216)
    public static var typeName = "GOPRO_GET_REQUEST"
    public static var typeDescription = "Request a GOPRO_COMMAND response from the GoPro"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("cmdId", 2, "GoproCommand", 0, "Command ID")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		cmdId = try data.enumeration(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(cmdId, at: 2)
        return payload
    }
}
