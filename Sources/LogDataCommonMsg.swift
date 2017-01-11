//
//  LogDataCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Reply to LOG_REQUEST_DATA
public struct LogData {

	/// Log id (from LOG_ENTRY reply)
	public let id: UInt16

	/// Offset into the log
	public let ofs: UInt32

	/// Number of bytes (zero for end of log)
	public let count: UInt8

	/// log data
	public let data: [UInt8]
}

extension LogData: Message {
    public static let id = UInt8(120)
    public static var typeName = "LOG_DATA"
    public static var typeDescription = "Reply to LOG_REQUEST_DATA"
    public static var fieldDefinitions: [FieldDefinition] = [("id", 4, "UInt16", 0, "Log id (from LOG_ENTRY reply)"), ("ofs", 0, "UInt32", 0, "Offset into the log"), ("count", 6, "UInt8", 0, "Number of bytes (zero for end of log)"), ("data", 7, "[UInt8]", 90, "log data")]

    public init(data: Data) throws {
		ofs = try data.number(at: 0)
		id = try data.number(at: 4)
		count = try data.number(at: 6)
		self.data = try data.array(at: 7, capacity: 90)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 97)
		try payload.set(ofs, at: 0)
		try payload.set(id, at: 4)
		try payload.set(count, at: 6)
		try payload.set(data, at: 7, capacity: 90)
        return payload
    }
}
