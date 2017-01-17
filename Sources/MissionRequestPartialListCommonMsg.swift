//
//  MissionRequestPartialListCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request a partial list of mission items from the system/component. http://qgroundcontrol.org/mavlink/waypoint_protocol. If start and end index are the same, just send one waypoint.
public struct MissionRequestPartialList {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Start index, 0 by default
	public let startIndex: Int16

	/// End index, -1 by default (-1: send list to end). Else a valid index of the list
	public let endIndex: Int16
}

extension MissionRequestPartialList: Message {
    public static let id = UInt8(37)
    public static var typeName = "MISSION_REQUEST_PARTIAL_LIST"
    public static var typeDescription = "Request a partial list of mission items from the system/component. http://qgroundcontrol.org/mavlink/waypoint_protocol. If start and end index are the same, just send one waypoint."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("startIndex", 0, "Int16", 0, "Start index, 0 by default"), ("endIndex", 2, "Int16", 0, "End index, -1 by default (-1: send list to end). Else a valid index of the list")]

    public init(data: Data) throws {
		startIndex = try data.number(at: 0)
		endIndex = try data.number(at: 2)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(startIndex, at: 0)
		try payload.set(endIndex, at: 2)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
        return payload
    }
}
