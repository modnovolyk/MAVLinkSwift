//
//  GPS2RawCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Second GPS data. Coordinate frame is right-handed, Z-axis up (GPS frame).
public struct GPS2Raw {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// See the GPS_FIX_TYPE enum.
	public let fixType: GPSFixType

	/// Latitude (WGS84), in degrees * 1E7
	public let lat: Int32

	/// Longitude (WGS84), in degrees * 1E7
	public let lon: Int32

	/// Altitude (AMSL, not WGS84), in meters * 1000 (positive for up)
	public let alt: Int32

	/// GPS HDOP horizontal dilution of position in cm (m*100). If unknown, set to: UINT16_MAX
	public let eph: UInt16

	/// GPS VDOP vertical dilution of position in cm (m*100). If unknown, set to: UINT16_MAX
	public let epv: UInt16

	/// GPS ground speed (m/s * 100). If unknown, set to: UINT16_MAX
	public let vel: UInt16

	/// Course over ground (NOT heading, but direction of movement) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
	public let cog: UInt16

	/// Number of satellites visible. If unknown, set to 255
	public let satellitesVisible: UInt8

	/// Number of DGPS satellites
	public let dgpsNumch: UInt8

	/// Age of DGPS info
	public let dgpsAge: UInt32
}

extension GPS2Raw: Message {
    public static let id = UInt8(124)
    public static var typeName = "GPS2_RAW"
    public static var typeDescription = "Second GPS data. Coordinate frame is right-handed, Z-axis up (GPS frame)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("fixType", 32, "GPSFixType", 0, "See the GPS_FIX_TYPE enum."), ("lat", 8, "Int32", 0, "Latitude (WGS84), in degrees * 1E7"), ("lon", 12, "Int32", 0, "Longitude (WGS84), in degrees * 1E7"), ("alt", 16, "Int32", 0, "Altitude (AMSL, not WGS84), in meters * 1000 (positive for up)"), ("eph", 24, "UInt16", 0, "GPS HDOP horizontal dilution of position in cm (m*100). If unknown, set to: UINT16_MAX"), ("epv", 26, "UInt16", 0, "GPS VDOP vertical dilution of position in cm (m*100). If unknown, set to: UINT16_MAX"), ("vel", 28, "UInt16", 0, "GPS ground speed (m/s * 100). If unknown, set to: UINT16_MAX"), ("cog", 30, "UInt16", 0, "Course over ground (NOT heading, but direction of movement) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX"), ("satellitesVisible", 33, "UInt8", 0, "Number of satellites visible. If unknown, set to 255"), ("dgpsNumch", 34, "UInt8", 0, "Number of DGPS satellites"), ("dgpsAge", 20, "UInt32", 0, "Age of DGPS info")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		lat = try data.number(at: 8)
		lon = try data.number(at: 12)
		alt = try data.number(at: 16)
		dgpsAge = try data.number(at: 20)
		eph = try data.number(at: 24)
		epv = try data.number(at: 26)
		vel = try data.number(at: 28)
		cog = try data.number(at: 30)
		fixType = try data.enumeration(at: 32)
		satellitesVisible = try data.number(at: 33)
		dgpsNumch = try data.number(at: 34)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 35)
		try payload.set(timeUsec, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lon, at: 12)
		try payload.set(alt, at: 16)
		try payload.set(dgpsAge, at: 20)
		try payload.set(eph, at: 24)
		try payload.set(epv, at: 26)
		try payload.set(vel, at: 28)
		try payload.set(cog, at: 30)
		try payload.set(fixType, at: 32)
		try payload.set(satellitesVisible, at: 33)
		try payload.set(dgpsNumch, at: 34)
        return payload
    }
}
