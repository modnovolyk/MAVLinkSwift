//
//  GPSRawIntCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The global position, as returned by the Global Positioning System (GPS). This is NOT the global position estimate of the system, but rather a RAW sensor value. See message GLOBAL_POSITION for the global position estimate. Coordinate frame is right-handed, Z-axis up (GPS frame).
public struct GPSRawInt {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// See the GPS_FIX_TYPE enum.
	public let fixType: GPSFixType

	/// Latitude (WGS84), in degrees * 1E7
	public let lat: Int32

	/// Longitude (WGS84), in degrees * 1E7
	public let lon: Int32

	/// Altitude (AMSL, NOT WGS84), in meters * 1000 (positive for up). Note that virtually all GPS modules provide the AMSL altitude in addition to the WGS84 altitude.
	public let alt: Int32

	/// GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX
	public let eph: UInt16

	/// GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX
	public let epv: UInt16

	/// GPS ground speed (m/s * 100). If unknown, set to: UINT16_MAX
	public let vel: UInt16

	/// Course over ground (NOT heading, but direction of movement) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
	public let cog: UInt16

	/// Number of satellites visible. If unknown, set to 255
	public let satellitesVisible: UInt8
}

extension GPSRawInt: Message {
    public static let id = UInt8(24)
    public static var typeName = "GPS_RAW_INT"
    public static var typeDescription = "The global position, as returned by the Global Positioning System (GPS). This is NOT the global position estimate of the system, but rather a RAW sensor value. See message GLOBAL_POSITION for the global position estimate. Coordinate frame is right-handed, Z-axis up (GPS frame)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("fixType", 28, "GPSFixType", 0, "See the GPS_FIX_TYPE enum."), ("lat", 8, "Int32", 0, "Latitude (WGS84), in degrees * 1E7"), ("lon", 12, "Int32", 0, "Longitude (WGS84), in degrees * 1E7"), ("alt", 16, "Int32", 0, "Altitude (AMSL, NOT WGS84), in meters * 1000 (positive for up). Note that virtually all GPS modules provide the AMSL altitude in addition to the WGS84 altitude."), ("eph", 20, "UInt16", 0, "GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX"), ("epv", 22, "UInt16", 0, "GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX"), ("vel", 24, "UInt16", 0, "GPS ground speed (m/s * 100). If unknown, set to: UINT16_MAX"), ("cog", 26, "UInt16", 0, "Course over ground (NOT heading, but direction of movement) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX"), ("satellitesVisible", 29, "UInt8", 0, "Number of satellites visible. If unknown, set to 255")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		lat = try data.number(at: 8)
		lon = try data.number(at: 12)
		alt = try data.number(at: 16)
		eph = try data.number(at: 20)
		epv = try data.number(at: 22)
		vel = try data.number(at: 24)
		cog = try data.number(at: 26)
		fixType = try data.enumeration(at: 28)
		satellitesVisible = try data.number(at: 29)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 30)
		try payload.set(timeUsec, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lon, at: 12)
		try payload.set(alt, at: 16)
		try payload.set(eph, at: 20)
		try payload.set(epv, at: 22)
		try payload.set(vel, at: 24)
		try payload.set(cog, at: 26)
		try payload.set(fixType, at: 28)
		try payload.set(satellitesVisible, at: 29)
        return payload
    }
}
