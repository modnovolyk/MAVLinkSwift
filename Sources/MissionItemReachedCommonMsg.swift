//
//  MissionItemReachedCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
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
