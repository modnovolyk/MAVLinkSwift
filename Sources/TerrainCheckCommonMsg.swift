//
//  TerrainCheckCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Request that the vehicle report terrain height at the given location. Used by GCS to check if vehicle has all terrain data needed for a mission.
public struct TerrainCheck {

	/// Latitude (degrees *10^7)
	public let lat: Int32

	/// Longitude (degrees *10^7)
	public let lon: Int32
}

extension TerrainCheck: Message {
    public static let id = UInt8(135)
    public static var typeName = "TERRAIN_CHECK"
    public static var typeDescription = "Request that the vehicle report terrain height at the given location. Used by GCS to check if vehicle has all terrain data needed for a mission."
    public static var fieldDefinitions: [FieldDefinition] = [("lat", 0, "Int32", 0, "Latitude (degrees *10^7)"), ("lon", 4, "Int32", 0, "Longitude (degrees *10^7)")]

    public init(data: Data) throws {
		lat = try data.number(at: 0)
		lon = try data.number(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(lat, at: 0)
		try payload.set(lon, at: 4)
        return payload
    }
}
