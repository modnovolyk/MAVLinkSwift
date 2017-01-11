//
//  GPSStatusCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The positioning status, as reported by GPS. This message is intended to display status information about each satellite visible to the receiver. See message GLOBAL_POSITION for the global position estimate. This message can contain information for up to 20 satellites.
public struct GPSStatus {

	/// Number of satellites visible
	public let satellitesVisible: UInt8

	/// Global satellite ID
	public let satellitePrn: [UInt8]

	/// 0: Satellite not used, 1: used for localization
	public let satelliteUsed: [UInt8]

	/// Elevation (0: right on top of receiver, 90: on the horizon) of satellite
	public let satelliteElevation: [UInt8]

	/// Direction of satellite, 0: 0 deg, 255: 360 deg.
	public let satelliteAzimuth: [UInt8]

	/// Signal to noise ratio of satellite
	public let satelliteSnr: [UInt8]
}

extension GPSStatus: Message {
    public static let id = UInt8(25)
    public static var typeName = "GPS_STATUS"
    public static var typeDescription = "The positioning status, as reported by GPS. This message is intended to display status information about each satellite visible to the receiver. See message GLOBAL_POSITION for the global position estimate. This message can contain information for up to 20 satellites."
    public static var fieldDefinitions: [FieldDefinition] = [("satellitesVisible", 0, "UInt8", 0, "Number of satellites visible"), ("satellitePrn", 1, "[UInt8]", 20, "Global satellite ID"), ("satelliteUsed", 21, "[UInt8]", 20, "0: Satellite not used, 1: used for localization"), ("satelliteElevation", 41, "[UInt8]", 20, "Elevation (0: right on top of receiver, 90: on the horizon) of satellite"), ("satelliteAzimuth", 61, "[UInt8]", 20, "Direction of satellite, 0: 0 deg, 255: 360 deg."), ("satelliteSnr", 81, "[UInt8]", 20, "Signal to noise ratio of satellite")]

    public init(data: Data) throws {
		satellitesVisible = try data.number(at: 0)
		satellitePrn = try data.array(at: 1, capacity: 20)
		satelliteUsed = try data.array(at: 21, capacity: 20)
		satelliteElevation = try data.array(at: 41, capacity: 20)
		satelliteAzimuth = try data.array(at: 61, capacity: 20)
		satelliteSnr = try data.array(at: 81, capacity: 20)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 101)
		try payload.set(satellitesVisible, at: 0)
		try payload.set(satellitePrn, at: 1, capacity: 20)
		try payload.set(satelliteUsed, at: 21, capacity: 20)
		try payload.set(satelliteElevation, at: 41, capacity: 20)
		try payload.set(satelliteAzimuth, at: 61, capacity: 20)
		try payload.set(satelliteSnr, at: 81, capacity: 20)
        return payload
    }
}
