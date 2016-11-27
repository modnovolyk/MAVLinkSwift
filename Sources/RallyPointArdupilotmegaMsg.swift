//
//  RallyPointArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// A rally point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS
public struct RallyPoint {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// point index (first point is 0)
	public let idx: UInt8

	/// total number of points (for sanity checking)
	public let count: UInt8

	/// Latitude of point in degrees * 1E7
	public let lat: Int32

	/// Longitude of point in degrees * 1E7
	public let lng: Int32

	/// Transit / loiter altitude in meters relative to home
	public let alt: Int16

	/// Break altitude in meters relative to home
	public let breakAlt: Int16

	/// Heading to aim for when landing. In centi-degrees.
	public let landDir: UInt16

	/// See RALLY_FLAGS enum for definition of the bitmask.
	public let flags: UInt8
}

extension RallyPoint: Message {
    public static let id = UInt8(175)
    public static var typeName = "RALLY_POINT"
    public static var typeDescription = "A rally point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 14, "UInt8", 0, "System ID"), ("targetComponent", 15, "UInt8", 0, "Component ID"), ("idx", 16, "UInt8", 0, "point index (first point is 0)"), ("count", 17, "UInt8", 0, "total number of points (for sanity checking)"), ("lat", 0, "Int32", 0, "Latitude of point in degrees * 1E7"), ("lng", 4, "Int32", 0, "Longitude of point in degrees * 1E7"), ("alt", 8, "Int16", 0, "Transit / loiter altitude in meters relative to home"), ("breakAlt", 10, "Int16", 0, "Break altitude in meters relative to home"), ("landDir", 12, "UInt16", 0, "Heading to aim for when landing. In centi-degrees."), ("flags", 18, "UInt8", 0, "See RALLY_FLAGS enum for definition of the bitmask.")]

    public init(data: Data) throws {
		lat = try data.number(at: 0)
		lng = try data.number(at: 4)
		alt = try data.number(at: 8)
		breakAlt = try data.number(at: 10)
		landDir = try data.number(at: 12)
		targetSystem = try data.number(at: 14)
		targetComponent = try data.number(at: 15)
		idx = try data.number(at: 16)
		count = try data.number(at: 17)
		flags = try data.number(at: 18)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 19)
		try payload.set(lat, at: 0)
		try payload.set(lng, at: 4)
		try payload.set(alt, at: 8)
		try payload.set(breakAlt, at: 10)
		try payload.set(landDir, at: 12)
		try payload.set(targetSystem, at: 14)
		try payload.set(targetComponent, at: 15)
		try payload.set(idx, at: 16)
		try payload.set(count, at: 17)
		try payload.set(flags, at: 18)
        return payload
    }
}
