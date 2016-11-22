//
//  TIMESYNC.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Time synchronization message.
public struct Timesync {

	/// Time sync timestamp 1
	public let tc1: Int64

	/// Time sync timestamp 2
	public let ts1: Int64
}

extension Timesync: Message {
    public static let id = UInt8(111)
    public static var typeName = "TIMESYNC"
    public static var typeDescription = "Time synchronization message."
    public static var fieldDefinitions: [FieldDefinition] = [("tc1", 0, "Int64", 0, "Time sync timestamp 1"), ("ts1", 8, "Int64", 0, "Time sync timestamp 2")]

    public init(data: Data) throws {
		tc1 = try data.number(at: 0)
		ts1 = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 16)
		try payload.set(tc1, at: 0)
		try payload.set(ts1, at: 8)
        return payload
    }
}
