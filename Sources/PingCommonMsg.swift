//
//  PingCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// A ping message either requesting or responding to a ping. This allows to measure the system latencies, including serial port, radio modem and UDP connections.
public struct Ping {

	/// Unix timestamp in microseconds or since system boot if smaller than MAVLink epoch (1.1.2009)
	public let timeUsec: UInt64

	/// PING sequence
	public let seq: UInt32

	/// 0: request ping from all receiving systems, if greater than 0: message is a ping response and number is the system id of the requesting system
	public let targetSystem: UInt8

	/// 0: request ping from all receiving components, if greater than 0: message is a ping response and number is the system id of the requesting system
	public let targetComponent: UInt8
}

extension Ping: Message {
    public static let id = UInt8(4)
    public static var typeName = "PING"
    public static var typeDescription = "A ping message either requesting or responding to a ping. This allows to measure the system latencies, including serial port, radio modem and UDP connections."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Unix timestamp in microseconds or since system boot if smaller than MAVLink epoch (1.1.2009)"), ("seq", 8, "UInt32", 0, "PING sequence"), ("targetSystem", 12, "UInt8", 0, "0: request ping from all receiving systems, if greater than 0: message is a ping response and number is the system id of the requesting system"), ("targetComponent", 13, "UInt8", 0, "0: request ping from all receiving components, if greater than 0: message is a ping response and number is the system id of the requesting system")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		seq = try data.number(at: 8)
		targetSystem = try data.number(at: 12)
		targetComponent = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeUsec, at: 0)
		try payload.set(seq, at: 8)
		try payload.set(targetSystem, at: 12)
		try payload.set(targetComponent, at: 13)
        return payload
    }
}
