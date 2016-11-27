//
//  MissionRequestListCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request the overall list of mission items from the system/component.
public struct MissionRequestList {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8
}

extension MissionRequestList: Message {
    public static let id = UInt8(43)
    public static var typeName = "MISSION_REQUEST_LIST"
    public static var typeDescription = "Request the overall list of mission items from the system/component."
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
