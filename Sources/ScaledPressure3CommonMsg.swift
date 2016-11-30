//
//  ScaledPressure3CommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Barometer readings for 3rd barometer
public struct ScaledPressure3 {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Absolute pressure (hectopascal)
	public let pressAbs: Float

	/// Differential pressure 1 (hectopascal)
	public let pressDiff: Float

	/// Temperature measurement (0.01 degrees celsius)
	public let temperature: Int16
}

extension ScaledPressure3: Message {
    public static let id = UInt8(143)
    public static var typeName = "SCALED_PRESSURE3"
    public static var typeDescription = "Barometer readings for 3rd barometer"
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
