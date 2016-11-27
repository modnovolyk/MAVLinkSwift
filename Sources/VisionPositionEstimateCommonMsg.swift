//
//  VisionPositionEstimateCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct VisionPositionEstimate {

	/// Timestamp (microseconds, synced to UNIX time or since system boot)
	public let usec: UInt64

	/// Global X position
	public let x: Float

	/// Global Y position
	public let y: Float

	/// Global Z position
	public let z: Float

	/// Roll angle in rad
	public let roll: Float

	/// Pitch angle in rad
	public let pitch: Float

	/// Yaw angle in rad
	public let yaw: Float
}

extension VisionPositionEstimate: Message {
    public static let id = UInt8(102)
    public static var typeName = "VISION_POSITION_ESTIMATE"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("usec", 0, "UInt64", 0, "Timestamp (microseconds, synced to UNIX time or since system boot)"), ("x", 8, "Float", 0, "Global X position"), ("y", 12, "Float", 0, "Global Y position"), ("z", 16, "Float", 0, "Global Z position"), ("roll", 20, "Float", 0, "Roll angle in rad"), ("pitch", 24, "Float", 0, "Pitch angle in rad"), ("yaw", 28, "Float", 0, "Yaw angle in rad")]

    public init(data: Data) throws {
		usec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
		roll = try data.number(at: 20)
		pitch = try data.number(at: 24)
		yaw = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(usec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
		try payload.set(roll, at: 20)
		try payload.set(pitch, at: 24)
		try payload.set(yaw, at: 28)
        return payload
    }
}
