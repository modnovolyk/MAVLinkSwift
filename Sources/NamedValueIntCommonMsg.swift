//
//  NamedValueIntCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Send a key-value pair as integer. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output.
public struct NamedValueInt {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Name of the debug variable
	public let name: String

	/// Signed integer value
	public let value: Int32
}

extension NamedValueInt: Message {
    public static let id = UInt8(252)
    public static var typeName = "NAMED_VALUE_INT"
    public static var typeDescription = "Send a key-value pair as integer. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("name", 8, "String", 10, "Name of the debug variable"), ("value", 4, "Int32", 0, "Signed integer value")]

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
