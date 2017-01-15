//
//  MeminfoArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// state of APM memory
public struct Meminfo {

	/// heap top
	public let brkval: UInt16

	/// free memory
	public let freemem: UInt16
}

extension Meminfo: Message {
    public static let id = UInt8(152)
    public static var typeName = "MEMINFO"
    public static var typeDescription = "state of APM memory"
    public static var fieldDefinitions: [FieldDefinition] = [("brkval", 0, "UInt16", 0, "heap top"), ("freemem", 2, "UInt16", 0, "free memory")]

    public init(data: Data) throws {
		brkval = try data.number(at: 0)
		freemem = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 4)
		try payload.set(brkval, at: 0)
		try payload.set(freemem, at: 2)
        return payload
    }
}
