//
//  REQUEST_DATA_STREAM.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// THIS INTERFACE IS DEPRECATED. USE SET_MESSAGE_INTERVAL INSTEAD.
public struct RequestDataStream {

	/// The target requested to send the message stream.
	public let targetSystem: UInt8

	/// The target requested to send the message stream.
	public let targetComponent: UInt8

	/// The ID of the requested data stream
	public let reqStreamId: UInt8

	/// The requested message rate
	public let reqMessageRate: UInt16

	/// 1 to start sending, 0 to stop sending.
	public let startStop: UInt8
}

extension RequestDataStream: Message {
    public static let id = UInt8(66)
    public static var typeName = "REQUEST_DATA_STREAM"
    public static var typeDescription = "THIS INTERFACE IS DEPRECATED. USE SET_MESSAGE_INTERVAL INSTEAD."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 2, "UInt8", 0, "The target requested to send the message stream."), ("targetComponent", 3, "UInt8", 0, "The target requested to send the message stream."), ("reqStreamId", 4, "UInt8", 0, "The ID of the requested data stream"), ("reqMessageRate", 0, "UInt16", 0, "The requested message rate"), ("startStop", 5, "UInt8", 0, "1 to start sending, 0 to stop sending.")]

    public init(data: Data) throws {
		reqMessageRate = try data.number(at: 0)
		targetSystem = try data.number(at: 2)
		targetComponent = try data.number(at: 3)
		reqStreamId = try data.number(at: 4)
		startStop = try data.number(at: 5)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(reqMessageRate, at: 0)
		try payload.set(targetSystem, at: 2)
		try payload.set(targetComponent, at: 3)
		try payload.set(reqStreamId, at: 4)
		try payload.set(startStop, at: 5)
        return payload
    }
}
