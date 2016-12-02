//
//  AltitudeCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The current system altitude.
public struct Altitude {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights.
	public let altitudeMonotonic: Float

	/// This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output AMSL by default and not the WGS84 altitude.
	public let altitudeAmsl: Float

	/// This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive.
	public let altitudeLocal: Float

	/// This is the altitude above the home position. It resets on each change of the current home position.
	public let altitudeRelative: Float

	/// This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown.
	public let altitudeTerrain: Float

	/// This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.
	public let bottomClearance: Float
}

extension Altitude: Message {
    public static let id = UInt8(141)
    public static var typeName = "ALTITUDE"
    public static var typeDescription = "The current system altitude."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("altitudeMonotonic", 8, "Float", 0, "This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights."), ("altitudeAmsl", 12, "Float", 0, "This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output AMSL by default and not the WGS84 altitude."), ("altitudeLocal", 16, "Float", 0, "This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive."), ("altitudeRelative", 20, "Float", 0, "This is the altitude above the home position. It resets on each change of the current home position."), ("altitudeTerrain", 24, "Float", 0, "This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown."), ("bottomClearance", 28, "Float", 0, "This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		altitudeMonotonic = try data.number(at: 8)
		altitudeAmsl = try data.number(at: 12)
		altitudeLocal = try data.number(at: 16)
		altitudeRelative = try data.number(at: 20)
		altitudeTerrain = try data.number(at: 24)
		bottomClearance = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(timeUsec, at: 0)
		try payload.set(altitudeMonotonic, at: 8)
		try payload.set(altitudeAmsl, at: 12)
		try payload.set(altitudeLocal, at: 16)
		try payload.set(altitudeRelative, at: 20)
		try payload.set(altitudeTerrain, at: 24)
		try payload.set(bottomClearance, at: 28)
        return payload
    }
}
