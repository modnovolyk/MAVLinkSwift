//
//  Ahrs3ArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status of third AHRS filter if available. This is for ANU research group (Ali and Sean)
public struct Ahrs3 {

	/// Roll angle (rad)
	public let roll: Float

	/// Pitch angle (rad)
	public let pitch: Float

	/// Yaw angle (rad)
	public let yaw: Float

	/// Altitude (MSL)
	public let altitude: Float

	/// Latitude in degrees * 1E7
	public let lat: Int32

	/// Longitude in degrees * 1E7
	public let lng: Int32

	/// test variable1
	public let v1: Float

	/// test variable2
	public let v2: Float

	/// test variable3
	public let v3: Float

	/// test variable4
	public let v4: Float
}

extension Ahrs3: Message {
    public static let id = UInt8(182)
    public static var typeName = "AHRS3"
    public static var typeDescription = "Status of third AHRS filter if available. This is for ANU research group (Ali and Sean)"
    public static var fieldDefinitions: [FieldDefinition] = [("roll", 0, "Float", 0, "Roll angle (rad)"), ("pitch", 4, "Float", 0, "Pitch angle (rad)"), ("yaw", 8, "Float", 0, "Yaw angle (rad)"), ("altitude", 12, "Float", 0, "Altitude (MSL)"), ("lat", 16, "Int32", 0, "Latitude in degrees * 1E7"), ("lng", 20, "Int32", 0, "Longitude in degrees * 1E7"), ("v1", 24, "Float", 0, "test variable1"), ("v2", 28, "Float", 0, "test variable2"), ("v3", 32, "Float", 0, "test variable3"), ("v4", 36, "Float", 0, "test variable4")]

    public init(data: Data) throws {
		roll = try data.number(at: 0)
		pitch = try data.number(at: 4)
		yaw = try data.number(at: 8)
		altitude = try data.number(at: 12)
		lat = try data.number(at: 16)
		lng = try data.number(at: 20)
		v1 = try data.number(at: 24)
		v2 = try data.number(at: 28)
		v3 = try data.number(at: 32)
		v4 = try data.number(at: 36)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 40)
		try payload.set(roll, at: 0)
		try payload.set(pitch, at: 4)
		try payload.set(yaw, at: 8)
		try payload.set(altitude, at: 12)
		try payload.set(lat, at: 16)
		try payload.set(lng, at: 20)
		try payload.set(v1, at: 24)
		try payload.set(v2, at: 28)
		try payload.set(v3, at: 32)
		try payload.set(v4, at: 36)
        return payload
    }
}
