//
//  DataStreamCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// THIS INTERFACE IS DEPRECATED. USE MESSAGE_INTERVAL INSTEAD.
public struct DataStream {

	/// The ID of the requested data stream
	public let streamId: UInt8

	/// The message rate
	public let messageRate: UInt16

	/// 1 stream is enabled, 0 stream is stopped.
	public let onOff: UInt8
}

extension DataStream: Message {
    public static let id = UInt8(67)
    public static var typeName = "DATA_STREAM"
    public static var typeDescription = "THIS INTERFACE IS DEPRECATED. USE MESSAGE_INTERVAL INSTEAD."
    public static var fieldDefinitions: [FieldDefinition] = [("streamId", 2, "UInt8", 0, "The ID of the requested data stream"), ("messageRate", 0, "UInt16", 0, "The message rate"), ("onOff", 3, "UInt8", 0, "1 stream is enabled, 0 stream is stopped.")]

    public init(data: Data) throws {
		messageRate = try data.number(at: 0)
		streamId = try data.number(at: 2)
		onOff = try data.number(at: 3)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 4)
		try payload.set(messageRate, at: 0)
		try payload.set(streamId, at: 2)
		try payload.set(onOff, at: 3)
        return payload
    }
}
