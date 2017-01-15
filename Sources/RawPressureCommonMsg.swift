//
//  RawPressureCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The RAW pressure readings for the typical setup of one absolute pressure and one differential pressure sensor. The sensor values should be the raw, UNSCALED ADC values.
public struct RawPressure {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// Absolute pressure (raw)
	public let pressAbs: Int16

	/// Differential pressure 1 (raw, 0 if nonexistant)
	public let pressDiff1: Int16

	/// Differential pressure 2 (raw, 0 if nonexistant)
	public let pressDiff2: Int16

	/// Raw Temperature measurement (raw)
	public let temperature: Int16
}

extension RawPressure: Message {
    public static let id = UInt8(28)
    public static var typeName = "RAW_PRESSURE"
    public static var typeDescription = "The RAW pressure readings for the typical setup of one absolute pressure and one differential pressure sensor. The sensor values should be the raw, UNSCALED ADC values."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("pressAbs", 8, "Int16", 0, "Absolute pressure (raw)"), ("pressDiff1", 10, "Int16", 0, "Differential pressure 1 (raw, 0 if nonexistant)"), ("pressDiff2", 12, "Int16", 0, "Differential pressure 2 (raw, 0 if nonexistant)"), ("temperature", 14, "Int16", 0, "Raw Temperature measurement (raw)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		pressAbs = try data.number(at: 8)
		pressDiff1 = try data.number(at: 10)
		pressDiff2 = try data.number(at: 12)
		temperature = try data.number(at: 14)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 16)
		try payload.set(timeUsec, at: 0)
		try payload.set(pressAbs, at: 8)
		try payload.set(pressDiff1, at: 10)
		try payload.set(pressDiff2, at: 12)
		try payload.set(temperature, at: 14)
        return payload
    }
}
