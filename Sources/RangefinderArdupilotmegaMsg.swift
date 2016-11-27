//
//  RangefinderArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Rangefinder reporting
public struct Rangefinder {

	/// distance in meters
	public let distance: Float

	/// raw voltage if available, zero otherwise
	public let voltage: Float
}

extension Rangefinder: Message {
    public static let id = UInt8(173)
    public static var typeName = "RANGEFINDER"
    public static var typeDescription = "Rangefinder reporting"
    public static var fieldDefinitions: [FieldDefinition] = [("distance", 0, "Float", 0, "distance in meters"), ("voltage", 4, "Float", 0, "raw voltage if available, zero otherwise")]

    public init(data: Data) throws {
		distance = try data.number(at: 0)
		voltage = try data.number(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(distance, at: 0)
		try payload.set(voltage, at: 4)
        return payload
    }
}
