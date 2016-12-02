//
//  FollowTargetCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// current motion information from a designated system
public struct FollowTarget {

	/// Timestamp in milliseconds since system boot
	public let timestamp: UInt64

	/// bit positions for tracker reporting capabilities (POS = 0, VEL = 1, ACCEL = 2, ATT + RATES = 3)
	public let estCapabilities: UInt8

	/// Latitude (WGS84), in degrees * 1E7
	public let lat: Int32

	/// Longitude (WGS84), in degrees * 1E7
	public let lon: Int32

	/// AMSL, in meters
	public let alt: Float

	/// target velocity (0,0,0) for unknown
	public let vel: [Float]

	/// linear target acceleration (0,0,0) for unknown
	public let acc: [Float]

	/// (1 0 0 0 for unknown)
	public let attitudeQ: [Float]

	/// (0 0 0 for unknown)
	public let rates: [Float]

	/// eph epv
	public let positionCov: [Float]

	/// button states or switches of a tracker device
	public let customState: UInt64
}

extension FollowTarget: Message {
    public static let id = UInt8(144)
    public static var typeName = "FOLLOW_TARGET"
    public static var typeDescription = "current motion information from a designated system"
    public static var fieldDefinitions: [FieldDefinition] = [("timestamp", 0, "UInt64", 0, "Timestamp in milliseconds since system boot"), ("estCapabilities", 92, "UInt8", 0, "bit positions for tracker reporting capabilities (POS = 0, VEL = 1, ACCEL = 2, ATT + RATES = 3)"), ("lat", 16, "Int32", 0, "Latitude (WGS84), in degrees * 1E7"), ("lon", 20, "Int32", 0, "Longitude (WGS84), in degrees * 1E7"), ("alt", 24, "Float", 0, "AMSL, in meters"), ("vel", 28, "[Float]", 3, "target velocity (0,0,0) for unknown"), ("acc", 40, "[Float]", 3, "linear target acceleration (0,0,0) for unknown"), ("attitudeQ", 52, "[Float]", 4, "(1 0 0 0 for unknown)"), ("rates", 68, "[Float]", 3, "(0 0 0 for unknown)"), ("positionCov", 80, "[Float]", 3, "eph epv"), ("customState", 8, "UInt64", 0, "button states or switches of a tracker device")]

    public init(data: Data) throws {
		timestamp = try data.number(at: 0)
		customState = try data.number(at: 8)
		lat = try data.number(at: 16)
		lon = try data.number(at: 20)
		alt = try data.number(at: 24)
		vel = try data.array(at: 28, capacity: 3)
		acc = try data.array(at: 40, capacity: 3)
		attitudeQ = try data.array(at: 52, capacity: 4)
		rates = try data.array(at: 68, capacity: 3)
		positionCov = try data.array(at: 80, capacity: 3)
		estCapabilities = try data.number(at: 92)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 93)
		try payload.set(timestamp, at: 0)
		try payload.set(customState, at: 8)
		try payload.set(lat, at: 16)
		try payload.set(lon, at: 20)
		try payload.set(alt, at: 24)
		try payload.set(vel, at: 28, capacity: 3)
		try payload.set(acc, at: 40, capacity: 3)
		try payload.set(attitudeQ, at: 52, capacity: 4)
		try payload.set(rates, at: 68, capacity: 3)
		try payload.set(positionCov, at: 80, capacity: 3)
		try payload.set(estCapabilities, at: 92)
        return payload
    }
}
