//
//  HwstatusArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status of key hardware
public struct Hwstatus {

	/// board voltage (mV)
	public let vcc: UInt16

	/// I2C error count
	public let i2cerr: UInt8
}

extension Hwstatus: Message {
    public static let id = UInt8(165)
    public static var typeName = "HWSTATUS"
    public static var typeDescription = "Status of key hardware"
    public static var fieldDefinitions: [FieldDefinition] = [("vcc", 0, "UInt16", 0, "board voltage (mV)"), ("i2cerr", 2, "UInt8", 0, "I2C error count")]

    public init(data: Data) throws {
		vcc = try data.number(at: 0)
		i2cerr = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(vcc, at: 0)
		try payload.set(i2cerr, at: 2)
        return payload
    }
}
