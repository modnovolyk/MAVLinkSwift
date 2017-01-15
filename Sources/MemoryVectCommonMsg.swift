//
//  MemoryVectCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Send raw controller memory. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output.
public struct MemoryVect {

	/// Starting address of the debug variables
	public let address: UInt16

	/// Version code of the type variable. 0=unknown, type ignored and assumed int16_t. 1=as below
	public let ver: UInt8

	/// Type code of the memory variables. for ver = 1: 0=16 x int16_t, 1=16 x uint16_t, 2=16 x Q15, 3=16 x 1Q14
	public let type: UInt8

	/// Memory contents at specified address
	public let value: [Int8]
}

extension MemoryVect: Message {
    public static let id = UInt8(249)
    public static var typeName = "MEMORY_VECT"
    public static var typeDescription = "Send raw controller memory. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
    public static var fieldDefinitions: [FieldDefinition] = [("address", 0, "UInt16", 0, "Starting address of the debug variables"), ("ver", 2, "UInt8", 0, "Version code of the type variable. 0=unknown, type ignored and assumed int16_t. 1=as below"), ("type", 3, "UInt8", 0, "Type code of the memory variables. for ver = 1: 0=16 x int16_t, 1=16 x uint16_t, 2=16 x Q15, 3=16 x 1Q14"), ("value", 4, "[Int8]", 32, "Memory contents at specified address")]

    public init(data: Data) throws {
		address = try data.number(at: 0)
		ver = try data.number(at: 2)
		type = try data.number(at: 3)
		value = try data.array(at: 4, capacity: 32)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 36)
		try payload.set(address, at: 0)
		try payload.set(ver, at: 2)
		try payload.set(type, at: 3)
		try payload.set(value, at: 4, capacity: 32)
        return payload
    }
}
