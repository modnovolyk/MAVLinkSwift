//
//  Data96ArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Data packet, size 96
public struct Data96 {

	/// data type
	public let type: UInt8

	/// data length
	public let len: UInt8

	/// raw data
	public let data: [UInt8]
}

extension Data96: Message {
    public static let id = UInt8(172)
    public static var typeName = "DATA96"
    public static var typeDescription = "Data packet, size 96"
    public static var fieldDefinitions: [FieldDefinition] = [("type", 0, "UInt8", 0, "data type"), ("len", 1, "UInt8", 0, "data length"), ("data", 2, "[UInt8]", 96, "raw data")]

    public init(data: Data) throws {
		type = try data.number(at: 0)
		len = try data.number(at: 1)
		self.data = try data.array(at: 2, capacity: 96)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 98)
		try payload.set(type, at: 0)
		try payload.set(len, at: 1)
		try payload.set(data, at: 2, capacity: 96)
        return payload
    }
}
