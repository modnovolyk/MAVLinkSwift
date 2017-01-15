//
//  EkfStatusReportArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// EKF Status message including flags and variances
public struct EkfStatusReport {

	/// Flags
	public let flags: UInt16

	/// Velocity variance
	public let velocityVariance: Float

	/// Horizontal Position variance
	public let posHorizVariance: Float

	/// Vertical Position variance
	public let posVertVariance: Float

	/// Compass variance
	public let compassVariance: Float

	/// Terrain Altitude variance
	public let terrainAltVariance: Float
}

extension EkfStatusReport: Message {
    public static let id = UInt8(193)
    public static var typeName = "EKF_STATUS_REPORT"
    public static var typeDescription = "EKF Status message including flags and variances"
    public static var fieldDefinitions: [FieldDefinition] = [("flags", 20, "UInt16", 0, "Flags"), ("velocityVariance", 0, "Float", 0, "Velocity variance"), ("posHorizVariance", 4, "Float", 0, "Horizontal Position variance"), ("posVertVariance", 8, "Float", 0, "Vertical Position variance"), ("compassVariance", 12, "Float", 0, "Compass variance"), ("terrainAltVariance", 16, "Float", 0, "Terrain Altitude variance")]

    public init(data: Data) throws {
		velocityVariance = try data.number(at: 0)
		posHorizVariance = try data.number(at: 4)
		posVertVariance = try data.number(at: 8)
		compassVariance = try data.number(at: 12)
		terrainAltVariance = try data.number(at: 16)
		flags = try data.number(at: 20)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 22)
		try payload.set(velocityVariance, at: 0)
		try payload.set(posHorizVariance, at: 4)
		try payload.set(posVertVariance, at: 8)
		try payload.set(compassVariance, at: 12)
		try payload.set(terrainAltVariance, at: 16)
		try payload.set(flags, at: 20)
        return payload
    }
}
