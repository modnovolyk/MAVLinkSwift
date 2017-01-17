//
//  MissionCountCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// This message is emitted as response to MISSION_REQUEST_LIST by the MAV and to initiate a write transaction. The GCS can then request the individual mission item based on the knowledge of the total number of MISSIONs.
public struct MissionCount {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Number of mission items in the sequence
	public let count: UInt16
}

extension MissionCount: Message {
    public static let id = UInt8(44)
    public static var typeName = "MISSION_COUNT"
    public static var typeDescription = "This message is emitted as response to MISSION_REQUEST_LIST by the MAV and to initiate a write transaction. The GCS can then request the individual mission item based on the knowledge of the total number of MISSIONs."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 2, "UInt8", 0, "System ID"), ("targetComponent", 3, "UInt8", 0, "Component ID"), ("count", 0, "UInt16", 0, "Number of mission items in the sequence")]

    public init(data: Data) throws {
		count = try data.number(at: 0)
		targetSystem = try data.number(at: 2)
		targetComponent = try data.number(at: 3)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 4)
		try payload.set(count, at: 0)
		try payload.set(targetSystem, at: 2)
		try payload.set(targetComponent, at: 3)
        return payload
    }
}
