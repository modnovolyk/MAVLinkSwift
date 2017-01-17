//
//  RangefinderArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
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
