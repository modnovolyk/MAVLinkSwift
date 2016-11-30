//
//  ApAdcArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// raw ADC output
public struct ApAdc {

	/// ADC output 1
	public let adc1: UInt16

	/// ADC output 2
	public let adc2: UInt16

	/// ADC output 3
	public let adc3: UInt16

	/// ADC output 4
	public let adc4: UInt16

	/// ADC output 5
	public let adc5: UInt16

	/// ADC output 6
	public let adc6: UInt16
}

extension ApAdc: Message {
    public static let id = UInt8(153)
    public static var typeName = "AP_ADC"
    public static var typeDescription = "raw ADC output"
    public static var fieldDefinitions: [FieldDefinition] = [("adc1", 0, "UInt16", 0, "ADC output 1"), ("adc2", 2, "UInt16", 0, "ADC output 2"), ("adc3", 4, "UInt16", 0, "ADC output 3"), ("adc4", 6, "UInt16", 0, "ADC output 4"), ("adc5", 8, "UInt16", 0, "ADC output 5"), ("adc6", 10, "UInt16", 0, "ADC output 6")]

    public init(data: Data) throws {
		adc1 = try data.number(at: 0)
		adc2 = try data.number(at: 2)
		adc3 = try data.number(at: 4)
		adc4 = try data.number(at: 6)
		adc5 = try data.number(at: 8)
		adc6 = try data.number(at: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(adc1, at: 0)
		try payload.set(adc2, at: 2)
		try payload.set(adc3, at: 4)
		try payload.set(adc4, at: 6)
		try payload.set(adc5, at: 8)
		try payload.set(adc6, at: 10)
        return payload
    }
}
