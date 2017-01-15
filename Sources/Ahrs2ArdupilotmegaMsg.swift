//
//  Ahrs2ArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Status of secondary AHRS filter if available
public struct Ahrs2 {

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
}

extension Ahrs2: Message {
    public static let id = UInt8(178)
    public static var typeName = "AHRS2"
    public static var typeDescription = "Status of secondary AHRS filter if available"
    public static var fieldDefinitions: [FieldDefinition] = [("roll", 0, "Float", 0, "Roll angle (rad)"), ("pitch", 4, "Float", 0, "Pitch angle (rad)"), ("yaw", 8, "Float", 0, "Yaw angle (rad)"), ("altitude", 12, "Float", 0, "Altitude (MSL)"), ("lat", 16, "Int32", 0, "Latitude in degrees * 1E7"), ("lng", 20, "Int32", 0, "Longitude in degrees * 1E7")]

    public init(data: Data) throws {
		roll = try data.number(at: 0)
		pitch = try data.number(at: 4)
		yaw = try data.number(at: 8)
		altitude = try data.number(at: 12)
		lat = try data.number(at: 16)
		lng = try data.number(at: 20)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 24)
		try payload.set(roll, at: 0)
		try payload.set(pitch, at: 4)
		try payload.set(yaw, at: 8)
		try payload.set(altitude, at: 12)
		try payload.set(lat, at: 16)
		try payload.set(lng, at: 20)
        return payload
    }
}
