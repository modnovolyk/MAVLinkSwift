//
//  MagCalProgressArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Reports progress of compass calibration.
public struct MagCalProgress {

	/// Compass being calibrated
	public let compassId: UInt8

	/// Bitmask of compasses being calibrated
	public let calMask: UInt8

	/// Status (see MAG_CAL_STATUS enum)
	public let calStatus: UInt8

	/// Attempt number
	public let attempt: UInt8

	/// Completion percentage
	public let completionPct: UInt8

	/// Bitmask of sphere sections (see http://en.wikipedia.org/wiki/Geodesic_grid)
	public let completionMask: [UInt8]

	/// Body frame direction vector for display
	public let directionX: Float

	/// Body frame direction vector for display
	public let directionY: Float

	/// Body frame direction vector for display
	public let directionZ: Float
}

extension MagCalProgress: Message {
    public static let id = UInt8(191)
    public static var typeName = "MAG_CAL_PROGRESS"
    public static var typeDescription = "Reports progress of compass calibration."
    public static var fieldDefinitions: [FieldDefinition] = [("compassId", 12, "UInt8", 0, "Compass being calibrated"), ("calMask", 13, "UInt8", 0, "Bitmask of compasses being calibrated"), ("calStatus", 14, "UInt8", 0, "Status (see MAG_CAL_STATUS enum)"), ("attempt", 15, "UInt8", 0, "Attempt number"), ("completionPct", 16, "UInt8", 0, "Completion percentage"), ("completionMask", 17, "[UInt8]", 10, "Bitmask of sphere sections (see http://en.wikipedia.org/wiki/Geodesic_grid)"), ("directionX", 0, "Float", 0, "Body frame direction vector for display"), ("directionY", 4, "Float", 0, "Body frame direction vector for display"), ("directionZ", 8, "Float", 0, "Body frame direction vector for display")]

    public init(data: Data) throws {
		directionX = try data.number(at: 0)
		directionY = try data.number(at: 4)
		directionZ = try data.number(at: 8)
		compassId = try data.number(at: 12)
		calMask = try data.number(at: 13)
		calStatus = try data.number(at: 14)
		attempt = try data.number(at: 15)
		completionPct = try data.number(at: 16)
		completionMask = try data.array(at: 17, capacity: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 27)
		try payload.set(directionX, at: 0)
		try payload.set(directionY, at: 4)
		try payload.set(directionZ, at: 8)
		try payload.set(compassId, at: 12)
		try payload.set(calMask, at: 13)
		try payload.set(calStatus, at: 14)
		try payload.set(attempt, at: 15)
		try payload.set(completionPct, at: 16)
		try payload.set(completionMask, at: 17, capacity: 10)
        return payload
    }
}
