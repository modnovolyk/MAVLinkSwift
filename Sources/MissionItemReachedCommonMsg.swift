//
//  MissionItemReachedCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// A certain mission item has been reached. The system will either hold this position (or circle on the orbit) or (if the autocontinue on the WP was set) continue to the next MISSION.
public struct MissionItemReached {

	/// Sequence
	public let seq: UInt16
}

extension MissionItemReached: Message {
    public static let id = UInt8(46)
    public static var typeName = "MISSION_ITEM_REACHED"
    public static var typeDescription = "A certain mission item has been reached. The system will either hold this position (or circle on the orbit) or (if the autocontinue on the WP was set) continue to the next MISSION."
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
