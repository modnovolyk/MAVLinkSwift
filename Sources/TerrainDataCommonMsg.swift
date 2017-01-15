//
//  TerrainDataCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Terrain data sent from GCS. The lat/lon and grid_spacing must be the same as a lat/lon from a TERRAIN_REQUEST
public struct TerrainData {

	/// Latitude of SW corner of first grid (degrees *10^7)
	public let lat: Int32

	/// Longitude of SW corner of first grid (in degrees *10^7)
	public let lon: Int32

	/// Grid spacing in meters
	public let gridSpacing: UInt16

	/// bit within the terrain request mask
	public let gridbit: UInt8

	/// Terrain data in meters AMSL
	public let data: [Int16]
}

extension TerrainData: Message {
    public static let id = UInt8(134)
    public static var typeName = "TERRAIN_DATA"
    public static var typeDescription = "Terrain data sent from GCS. The lat/lon and grid_spacing must be the same as a lat/lon from a TERRAIN_REQUEST"
    public static var fieldDefinitions: [FieldDefinition] = [("lat", 0, "Int32", 0, "Latitude of SW corner of first grid (degrees *10^7)"), ("lon", 4, "Int32", 0, "Longitude of SW corner of first grid (in degrees *10^7)"), ("gridSpacing", 8, "UInt16", 0, "Grid spacing in meters"), ("gridbit", 42, "UInt8", 0, "bit within the terrain request mask"), ("data", 10, "[Int16]", 16, "Terrain data in meters AMSL")]

    public init(data: Data) throws {
		lat = try data.number(at: 0)
		lon = try data.number(at: 4)
		gridSpacing = try data.number(at: 8)
		self.data = try data.array(at: 10, capacity: 16)
		gridbit = try data.number(at: 42)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 43)
		try payload.set(lat, at: 0)
		try payload.set(lon, at: 4)
		try payload.set(gridSpacing, at: 8)
		try payload.set(data, at: 10, capacity: 16)
		try payload.set(gridbit, at: 42)
        return payload
    }
}
