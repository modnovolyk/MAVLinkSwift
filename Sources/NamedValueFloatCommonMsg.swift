//
//  NamedValueFloatCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Send a key-value pair as float. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output.
public struct NamedValueFloat {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Name of the debug variable
	public let name: String

	/// Floating point value
	public let value: Float
}

extension NamedValueFloat: Message {
    public static let id = UInt8(251)
    public static var typeName = "NAMED_VALUE_FLOAT"
    public static var typeDescription = "Send a key-value pair as float. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("name", 8, "String", 10, "Name of the debug variable"), ("value", 4, "Float", 0, "Floating point value")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		value = try data.number(at: 4)
		name = try data.string(at: 8, length: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 18)
		try payload.set(timeBootMs, at: 0)
		try payload.set(value, at: 4)
		try payload.set(name, at: 8, length: 10)
        return payload
    }
}
