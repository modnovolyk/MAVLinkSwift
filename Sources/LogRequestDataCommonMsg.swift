//
//  LogRequestDataCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request a chunk of a log
public struct LogRequestData {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Log id (from LOG_ENTRY reply)
	public let id: UInt16

	/// Offset into the log
	public let ofs: UInt32

	/// Number of bytes
	public let count: UInt32
}

extension LogRequestData: Message {
    public static let id = UInt8(119)
    public static var typeName = "LOG_REQUEST_DATA"
    public static var typeDescription = "Request a chunk of a log"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 10, "UInt8", 0, "System ID"), ("targetComponent", 11, "UInt8", 0, "Component ID"), ("id", 8, "UInt16", 0, "Log id (from LOG_ENTRY reply)"), ("ofs", 0, "UInt32", 0, "Offset into the log"), ("count", 4, "UInt32", 0, "Number of bytes")]

    public init(data: Data) throws {
		ofs = try data.number(at: 0)
		count = try data.number(at: 4)
		id = try data.number(at: 8)
		targetSystem = try data.number(at: 10)
		targetComponent = try data.number(at: 11)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(ofs, at: 0)
		try payload.set(count, at: 4)
		try payload.set(id, at: 8)
		try payload.set(targetSystem, at: 10)
		try payload.set(targetComponent, at: 11)
        return payload
    }
}
