//
//  Data64ArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Data packet, size 64
public struct Data64 {

	/// data type
	public let type: UInt8

	/// data length
	public let len: UInt8

	/// raw data
	public let data: [UInt8]
}

extension Data64: Message {
    public static let id = UInt8(171)
    public static var typeName = "DATA64"
    public static var typeDescription = "Data packet, size 64"
    public static var fieldDefinitions: [FieldDefinition] = [("type", 0, "UInt8", 0, "data type"), ("len", 1, "UInt8", 0, "data length"), ("data", 2, "[UInt8]", 64, "raw data")]

    public init(data: Data) throws {
		type = try data.number(at: 0)
		len = try data.number(at: 1)
		self.data = try data.array(at: 2, capacity: 64)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 66)
		try payload.set(type, at: 0)
		try payload.set(len, at: 1)
		try payload.set(data, at: 2, capacity: 64)
        return payload
    }
}
