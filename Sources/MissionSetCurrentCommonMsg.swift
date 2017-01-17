//
//  MissionSetCurrentCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between).
public struct MissionSetCurrent {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Sequence
	public let seq: UInt16
}

extension MissionSetCurrent: Message {
    public static let id = UInt8(41)
    public static var typeName = "MISSION_SET_CURRENT"
    public static var typeDescription = "Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between)."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 2, "UInt8", 0, "System ID"), ("targetComponent", 3, "UInt8", 0, "Component ID"), ("seq", 0, "UInt16", 0, "Sequence")]

    public init(data: Data) throws {
		seq = try data.number(at: 0)
		targetSystem = try data.number(at: 2)
		targetComponent = try data.number(at: 3)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 4)
		try payload.set(seq, at: 0)
		try payload.set(targetSystem, at: 2)
		try payload.set(targetComponent, at: 3)
        return payload
    }
}
