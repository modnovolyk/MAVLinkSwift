//
//  MissionCurrentCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Message that announces the sequence number of the current active mission item. The MAV will fly towards this mission item.
public struct MissionCurrent {

	/// Sequence
	public let seq: UInt16
}

extension MissionCurrent: Message {
    public static let id = UInt8(42)
    public static var typeName = "MISSION_CURRENT"
    public static var typeDescription = "Message that announces the sequence number of the current active mission item. The MAV will fly towards this mission item."
    public static var fieldDefinitions: [FieldDefinition] = [("seq", 0, "UInt16", 0, "Sequence")]

    public init(data: Data) throws {
		seq = try data.number(at: 0)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 2)
		try payload.set(seq, at: 0)
        return payload
    }
}
