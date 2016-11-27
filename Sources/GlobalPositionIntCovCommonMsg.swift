//
//  GlobalPositionIntCovCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset.
public struct GlobalPositionIntCov {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver.
	public let timeUtc: UInt64

	/// Class id of the estimator this estimate originated from.
	public let estimatorType: MAVEstimatorType

	/// Latitude, expressed as degrees * 1E7
	public let lat: Int32

	/// Longitude, expressed as degrees * 1E7
	public let lon: Int32

	/// Altitude in meters, expressed as * 1000 (millimeters), above MSL
	public let alt: Int32

	/// Altitude above ground in meters, expressed as * 1000 (millimeters)
	public let relativeAlt: Int32

	/// Ground X Speed (Latitude), expressed as m/s
	public let vx: Float

	/// Ground Y Speed (Longitude), expressed as m/s
	public let vy: Float

	/// Ground Z Speed (Altitude), expressed as m/s
	public let vz: Float

	/// Covariance matrix (first six entries are the first ROW, next six entries are the second row, etc.)
	public let covariance: [Float]
}

extension GlobalPositionIntCov: Message {
    public static let id = UInt8(63)
    public static var typeName = "GLOBAL_POSITION_INT_COV"
    public static var typeDescription = "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 8, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("timeUtc", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver."), ("estimatorType", 184, "MAVEstimatorType", 0, "Class id of the estimator this estimate originated from."), ("lat", 12, "Int32", 0, "Latitude, expressed as degrees * 1E7"), ("lon", 16, "Int32", 0, "Longitude, expressed as degrees * 1E7"), ("alt", 20, "Int32", 0, "Altitude in meters, expressed as * 1000 (millimeters), above MSL"), ("relativeAlt", 24, "Int32", 0, "Altitude above ground in meters, expressed as * 1000 (millimeters)"), ("vx", 28, "Float", 0, "Ground X Speed (Latitude), expressed as m/s"), ("vy", 32, "Float", 0, "Ground Y Speed (Longitude), expressed as m/s"), ("vz", 36, "Float", 0, "Ground Z Speed (Altitude), expressed as m/s"), ("covariance", 40, "[Float]", 36, "Covariance matrix (first six entries are the first ROW, next six entries are the second row, etc.)")]

    public init(data: Data) throws {
		timeUtc = try data.number(at: 0)
		timeBootMs = try data.number(at: 8)
		lat = try data.number(at: 12)
		lon = try data.number(at: 16)
		alt = try data.number(at: 20)
		relativeAlt = try data.number(at: 24)
		vx = try data.number(at: 28)
		vy = try data.number(at: 32)
		vz = try data.number(at: 36)
		covariance = try data.array(at: 40, capacity: 36)
		estimatorType = try data.enumeration(at: 184)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 185)
		try payload.set(timeUtc, at: 0)
		try payload.set(timeBootMs, at: 8)
		try payload.set(lat, at: 12)
		try payload.set(lon, at: 16)
		try payload.set(alt, at: 20)
		try payload.set(relativeAlt, at: 24)
		try payload.set(vx, at: 28)
		try payload.set(vy, at: 32)
		try payload.set(vz, at: 36)
		try payload.set(covariance, at: 40, capacity: 36)
		try payload.set(estimatorType, at: 184)
        return payload
    }
}
