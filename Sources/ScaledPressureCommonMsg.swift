//
//  ScaledPressureCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The pressure readings for the typical setup of one absolute and differential pressure sensor. The units are as specified in each field.
public struct ScaledPressure {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Absolute pressure (hectopascal)
	public let pressAbs: Float

	/// Differential pressure 1 (hectopascal)
	public let pressDiff: Float

	/// Temperature measurement (0.01 degrees celsius)
	public let temperature: Int16
}

extension ScaledPressure: Message {
    public static let id = UInt8(29)
    public static var typeName = "SCALED_PRESSURE"
    public static var typeDescription = "The pressure readings for the typical setup of one absolute and differential pressure sensor. The units are as specified in each field."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("pressAbs", 4, "Float", 0, "Absolute pressure (hectopascal)"), ("pressDiff", 8, "Float", 0, "Differential pressure 1 (hectopascal)"), ("temperature", 12, "Int16", 0, "Temperature measurement (0.01 degrees celsius)")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		pressAbs = try data.number(at: 4)
		pressDiff = try data.number(at: 8)
		temperature = try data.number(at: 12)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeBootMs, at: 0)
		try payload.set(pressAbs, at: 4)
		try payload.set(pressDiff, at: 8)
		try payload.set(temperature, at: 12)
        return payload
    }
}
