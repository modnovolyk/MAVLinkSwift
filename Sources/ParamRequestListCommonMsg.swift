//
//  ParamRequestListCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request all parameters of this component. After this request, all parameters are emitted.
public struct ParamRequestList {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8
}

extension ParamRequestList: Message {
    public static let id = UInt8(21)
    public static var typeName = "PARAM_REQUEST_LIST"
    public static var typeDescription = "Request all parameters of this component. After this request, all parameters are emitted."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 2)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
        return payload
    }
}
