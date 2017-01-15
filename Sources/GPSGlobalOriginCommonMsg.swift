//
//  GPSGlobalOriginCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Once the MAV sets a new GPS-Local correspondence, this message announces the origin (0,0,0) position
public struct GPSGlobalOrigin {

	/// Latitude (WGS84), in degrees * 1E7
	public let latitude: Int32

	/// Longitude (WGS84), in degrees * 1E7
	public let longitude: Int32

	/// Altitude (AMSL), in meters * 1000 (positive for up)
	public let altitude: Int32
}

extension GPSGlobalOrigin: Message {
    public static let id = UInt8(49)
    public static var typeName = "GPS_GLOBAL_ORIGIN"
    public static var typeDescription = "Once the MAV sets a new GPS-Local correspondence, this message announces the origin (0,0,0) position"
    public static var fieldDefinitions: [FieldDefinition] = [("latitude", 0, "Int32", 0, "Latitude (WGS84), in degrees * 1E7"), ("longitude", 4, "Int32", 0, "Longitude (WGS84), in degrees * 1E7"), ("altitude", 8, "Int32", 0, "Altitude (AMSL), in meters * 1000 (positive for up)")]

    public init(data: Data) throws {
		latitude = try data.number(at: 0)
		longitude = try data.number(at: 4)
		altitude = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(latitude, at: 0)
		try payload.set(longitude, at: 4)
		try payload.set(altitude, at: 8)
        return payload
    }
}
