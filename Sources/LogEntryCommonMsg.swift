//
//  LogEntryCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Reply to LOG_REQUEST_LIST
public struct LogEntry {

	/// Log id
	public let id: UInt16

	/// Total number of logs
	public let numLogs: UInt16

	/// High log number
	public let lastLogNum: UInt16

	/// UTC timestamp of log in seconds since 1970, or 0 if not available
	public let timeUtc: UInt32

	/// Size of the log (may be approximate) in bytes
	public let size: UInt32
}

extension LogEntry: Message {
    public static let id = UInt8(118)
    public static var typeName = "LOG_ENTRY"
    public static var typeDescription = "Reply to LOG_REQUEST_LIST"
    public static var fieldDefinitions: [FieldDefinition] = [("id", 8, "UInt16", 0, "Log id"), ("numLogs", 10, "UInt16", 0, "Total number of logs"), ("lastLogNum", 12, "UInt16", 0, "High log number"), ("timeUtc", 0, "UInt32", 0, "UTC timestamp of log in seconds since 1970, or 0 if not available"), ("size", 4, "UInt32", 0, "Size of the log (may be approximate) in bytes")]

    public init(data: Data) throws {
		timeUtc = try data.number(at: 0)
		size = try data.number(at: 4)
		id = try data.number(at: 8)
		numLogs = try data.number(at: 10)
		lastLogNum = try data.number(at: 12)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeUtc, at: 0)
		try payload.set(size, at: 4)
		try payload.set(id, at: 8)
		try payload.set(numLogs, at: 10)
		try payload.set(lastLogNum, at: 12)
        return payload
    }
}
