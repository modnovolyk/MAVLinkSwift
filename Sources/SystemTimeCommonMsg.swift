//
//  SystemTimeCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The system time is the time of the master clock, typically the computer clock of the main onboard computer.
public struct SystemTime {

	/// Timestamp of the master clock in microseconds since UNIX epoch.
	public let timeUnixUsec: UInt64

	/// Timestamp of the component clock since boot time in milliseconds.
	public let timeBootMs: UInt32
}

extension SystemTime: Message {
    public static let id = UInt8(2)
    public static var typeName = "SYSTEM_TIME"
    public static var typeDescription = "The system time is the time of the master clock, typically the computer clock of the main onboard computer."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUnixUsec", 0, "UInt64", 0, "Timestamp of the master clock in microseconds since UNIX epoch."), ("timeBootMs", 8, "UInt32", 0, "Timestamp of the component clock since boot time in milliseconds.")]

    public init(data: Data) throws {
		timeUnixUsec = try data.number(at: 0)
		timeBootMs = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(timeUnixUsec, at: 0)
		try payload.set(timeBootMs, at: 8)
        return payload
    }
}
