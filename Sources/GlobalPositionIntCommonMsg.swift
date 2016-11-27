//
//  GlobalPositionIntCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient.
public struct GlobalPositionInt {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Latitude, expressed as degrees * 1E7
	public let lat: Int32

	/// Longitude, expressed as degrees * 1E7
	public let lon: Int32

	/// Altitude in meters, expressed as * 1000 (millimeters), AMSL (not WGS84 - note that virtually all GPS modules provide the AMSL as well)
	public let alt: Int32

	/// Altitude above ground in meters, expressed as * 1000 (millimeters)
	public let relativeAlt: Int32

	/// Ground X Speed (Latitude, positive north), expressed as m/s * 100
	public let vx: Int16

	/// Ground Y Speed (Longitude, positive east), expressed as m/s * 100
	public let vy: Int16

	/// Ground Z Speed (Altitude, positive down), expressed as m/s * 100
	public let vz: Int16

	/// Vehicle heading (yaw angle) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
	public let hdg: UInt16
}

extension GlobalPositionInt: Message {
    public static let id = UInt8(33)
    public static var typeName = "GLOBAL_POSITION_INT"
    public static var typeDescription = "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("lat", 4, "Int32", 0, "Latitude, expressed as degrees * 1E7"), ("lon", 8, "Int32", 0, "Longitude, expressed as degrees * 1E7"), ("alt", 12, "Int32", 0, "Altitude in meters, expressed as * 1000 (millimeters), AMSL (not WGS84 - note that virtually all GPS modules provide the AMSL as well)"), ("relativeAlt", 16, "Int32", 0, "Altitude above ground in meters, expressed as * 1000 (millimeters)"), ("vx", 20, "Int16", 0, "Ground X Speed (Latitude, positive north), expressed as m/s * 100"), ("vy", 22, "Int16", 0, "Ground Y Speed (Longitude, positive east), expressed as m/s * 100"), ("vz", 24, "Int16", 0, "Ground Z Speed (Altitude, positive down), expressed as m/s * 100"), ("hdg", 26, "UInt16", 0, "Vehicle heading (yaw angle) in degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		lat = try data.number(at: 4)
		lon = try data.number(at: 8)
		alt = try data.number(at: 12)
		relativeAlt = try data.number(at: 16)
		vx = try data.number(at: 20)
		vy = try data.number(at: 22)
		vz = try data.number(at: 24)
		hdg = try data.number(at: 26)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(timeBootMs, at: 0)
		try payload.set(lat, at: 4)
		try payload.set(lon, at: 8)
		try payload.set(alt, at: 12)
		try payload.set(relativeAlt, at: 16)
		try payload.set(vx, at: 20)
		try payload.set(vy, at: 22)
		try payload.set(vz, at: 24)
		try payload.set(hdg, at: 26)
        return payload
    }
}
