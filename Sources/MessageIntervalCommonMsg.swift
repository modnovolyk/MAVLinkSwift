//
//  MessageIntervalCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// This interface replaces DATA_STREAM
public struct MessageInterval {

	/// The ID of the requested MAVLink message. v1.0 is limited to 254 messages.
	public let messageId: UInt16

	/// The interval between two messages, in microseconds. A value of -1 indicates this stream is disabled, 0 indicates it is not available, > 0 indicates the interval at which it is sent.
	public let intervalUs: Int32
}

extension MessageInterval: Message {
    public static let id = UInt8(244)
    public static var typeName = "MESSAGE_INTERVAL"
    public static var typeDescription = "This interface replaces DATA_STREAM"
    public static var fieldDefinitions: [FieldDefinition] = [("messageId", 4, "UInt16", 0, "The ID of the requested MAVLink message. v1.0 is limited to 254 messages."), ("intervalUs", 0, "Int32", 0, "The interval between two messages, in microseconds. A value of -1 indicates this stream is disabled, 0 indicates it is not available, > 0 indicates the interval at which it is sent.")]

    public init(data: Data) throws {
		intervalUs = try data.number(at: 0)
		messageId = try data.number(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(intervalUs, at: 0)
		try payload.set(messageId, at: 4)
        return payload
    }
}
