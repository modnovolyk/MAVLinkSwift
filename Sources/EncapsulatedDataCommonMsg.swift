//
//  EncapsulatedDataCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct EncapsulatedData {

	/// sequence number (starting with 0 on every transmission)
	public let seqnr: UInt16

	/// image data bytes
	public let data: [UInt8]
}

extension EncapsulatedData: Message {
    public static let id = UInt8(131)
    public static var typeName = "ENCAPSULATED_DATA"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("seqnr", 0, "UInt16", 0, "sequence number (starting with 0 on every transmission)"), ("data", 2, "[UInt8]", 253, "image data bytes")]

    public init(data: Data) throws {
		seqnr = try data.number(at: 0)
		self.data = try data.array(at: 2, capacity: 253)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 255)
		try payload.set(seqnr, at: 0)
		try payload.set(data, at: 2, capacity: 253)
        return payload
    }
}
