//
//  Data16ArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Data packet, size 16
public struct Data16 {

	/// data type
	public let type: UInt8

	/// data length
	public let len: UInt8

	/// raw data
	public let data: [UInt8]
}

extension Data16: Message {
    public static let id = UInt8(169)
    public static var typeName = "DATA16"
    public static var typeDescription = "Data packet, size 16"
    public static var fieldDefinitions: [FieldDefinition] = [("type", 0, "UInt8", 0, "data type"), ("len", 1, "UInt8", 0, "data length"), ("data", 2, "[UInt8]", 16, "raw data")]

    public init(data: Data) throws {
		type = try data.number(at: 0)
		len = try data.number(at: 1)
		self.data = try data.array(at: 2, capacity: 16)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 18)
		try payload.set(type, at: 0)
		try payload.set(len, at: 1)
		try payload.set(data, at: 2, capacity: 16)
        return payload
    }
}
