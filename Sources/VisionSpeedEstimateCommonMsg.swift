//
//  VisionSpeedEstimateCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct VisionSpeedEstimate {

	/// Timestamp (microseconds, synced to UNIX time or since system boot)
	public let usec: UInt64

	/// Global X speed
	public let x: Float

	/// Global Y speed
	public let y: Float

	/// Global Z speed
	public let z: Float
}

extension VisionSpeedEstimate: Message {
    public static let id = UInt8(103)
    public static var typeName = "VISION_SPEED_ESTIMATE"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("usec", 0, "UInt64", 0, "Timestamp (microseconds, synced to UNIX time or since system boot)"), ("x", 8, "Float", 0, "Global X speed"), ("y", 12, "Float", 0, "Global Y speed"), ("z", 16, "Float", 0, "Global Z speed")]

    public init(data: Data) throws {
		usec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 20)
		try payload.set(usec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
        return payload
    }
}
