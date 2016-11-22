//
//  DISTANCE_SENSOR.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct DistanceSensor {

	/// Time since system boot
	public let timeBootMs: UInt32

	/// Minimum distance the sensor can measure in centimeters
	public let minDistance: UInt16

	/// Maximum distance the sensor can measure in centimeters
	public let maxDistance: UInt16

	/// Current distance reading
	public let currentDistance: UInt16

	/// Type from MAV_DISTANCE_SENSOR enum.
	public let type: UInt8

	/// Onboard ID of the sensor
	public let id: UInt8

	/// Direction the sensor faces from MAV_SENSOR_ORIENTATION enum.
	public let orientation: UInt8

	/// Measurement covariance in centimeters, 0 for unknown / invalid readings
	public let covariance: UInt8
}

extension DistanceSensor: Message {
    public static let id = UInt8(132)
    public static var typeName = "DISTANCE_SENSOR"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Time since system boot"), ("minDistance", 4, "UInt16", 0, "Minimum distance the sensor can measure in centimeters"), ("maxDistance", 6, "UInt16", 0, "Maximum distance the sensor can measure in centimeters"), ("currentDistance", 8, "UInt16", 0, "Current distance reading"), ("type", 10, "UInt8", 0, "Type from MAV_DISTANCE_SENSOR enum."), ("id", 11, "UInt8", 0, "Onboard ID of the sensor"), ("orientation", 12, "UInt8", 0, "Direction the sensor faces from MAV_SENSOR_ORIENTATION enum."), ("covariance", 13, "UInt8", 0, "Measurement covariance in centimeters, 0 for unknown / invalid readings")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		minDistance = try data.number(at: 4)
		maxDistance = try data.number(at: 6)
		currentDistance = try data.number(at: 8)
		type = try data.number(at: 10)
		id = try data.number(at: 11)
		orientation = try data.number(at: 12)
		covariance = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(timeBootMs, at: 0)
		try payload.set(minDistance, at: 4)
		try payload.set(maxDistance, at: 6)
		try payload.set(currentDistance, at: 8)
		try payload.set(type, at: 10)
		try payload.set(id, at: 11)
		try payload.set(orientation, at: 12)
		try payload.set(covariance, at: 13)
        return payload
    }
}
