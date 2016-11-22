//
//  FENCE_POINT.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// A fence point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS
public struct FencePoint {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// point index (first point is 1, 0 is for return point)
	public let idx: UInt8

	/// total number of points (for sanity checking)
	public let count: UInt8

	/// Latitude of point
	public let lat: Float

	/// Longitude of point
	public let lng: Float
}

extension FencePoint: Message {
    public static let id = UInt8(160)
    public static var typeName = "FENCE_POINT"
    public static var typeDescription = "A fence point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 8, "UInt8", 0, "System ID"), ("targetComponent", 9, "UInt8", 0, "Component ID"), ("idx", 10, "UInt8", 0, "point index (first point is 1, 0 is for return point)"), ("count", 11, "UInt8", 0, "total number of points (for sanity checking)"), ("lat", 0, "Float", 0, "Latitude of point"), ("lng", 4, "Float", 0, "Longitude of point")]

    public init(data: Data) throws {
		lat = try data.number(at: 0)
		lng = try data.number(at: 4)
		targetSystem = try data.number(at: 8)
		targetComponent = try data.number(at: 9)
		idx = try data.number(at: 10)
		count = try data.number(at: 11)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(lat, at: 0)
		try payload.set(lng, at: 4)
		try payload.set(targetSystem, at: 8)
		try payload.set(targetComponent, at: 9)
		try payload.set(idx, at: 10)
		try payload.set(count, at: 11)
        return payload
    }
}
