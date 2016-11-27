//
//  LogRequestListCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request a list of available logs. On some systems calling this may stop on-board logging until LOG_REQUEST_END is called.
public struct LogRequestList {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// First log id (0 for first available)
	public let start: UInt16

	/// Last log id (0xffff for last available)
	public let end: UInt16
}

extension LogRequestList: Message {
    public static let id = UInt8(117)
    public static var typeName = "LOG_REQUEST_LIST"
    public static var typeDescription = "Request a list of available logs. On some systems calling this may stop on-board logging until LOG_REQUEST_END is called."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("start", 0, "UInt16", 0, "First log id (0 for first available)"), ("end", 2, "UInt16", 0, "Last log id (0xffff for last available)")]

    public init(data: Data) throws {
		start = try data.number(at: 0)
		end = try data.number(at: 2)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(start, at: 0)
		try payload.set(end, at: 2)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
        return payload
    }
}
