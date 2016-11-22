//
//  LANDING_TARGET.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The location of a landing area captured from a downward facing camera
public struct LandingTarget {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// The ID of the target if multiple targets are present
	public let targetNum: UInt8

	/// MAV_FRAME enum specifying the whether the following feilds are earth-frame, body-frame, etc.
	public let frame: UInt8

	/// X-axis angular offset (in radians) of the target from the center of the image
	public let angleX: Float

	/// Y-axis angular offset (in radians) of the target from the center of the image
	public let angleY: Float

	/// Distance to the target from the vehicle in meters
	public let distance: Float

	/// Size in radians of target along x-axis
	public let sizeX: Float

	/// Size in radians of target along y-axis
	public let sizeY: Float
}

extension LandingTarget: Message {
    public static let id = UInt8(149)
    public static var typeName = "LANDING_TARGET"
    public static var typeDescription = "The location of a landing area captured from a downward facing camera"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("targetNum", 28, "UInt8", 0, "The ID of the target if multiple targets are present"), ("frame", 29, "UInt8", 0, "MAV_FRAME enum specifying the whether the following feilds are earth-frame, body-frame, etc."), ("angleX", 8, "Float", 0, "X-axis angular offset (in radians) of the target from the center of the image"), ("angleY", 12, "Float", 0, "Y-axis angular offset (in radians) of the target from the center of the image"), ("distance", 16, "Float", 0, "Distance to the target from the vehicle in meters"), ("sizeX", 20, "Float", 0, "Size in radians of target along x-axis"), ("sizeY", 24, "Float", 0, "Size in radians of target along y-axis")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		angleX = try data.number(at: 8)
		angleY = try data.number(at: 12)
		distance = try data.number(at: 16)
		sizeX = try data.number(at: 20)
		sizeY = try data.number(at: 24)
		targetNum = try data.number(at: 28)
		frame = try data.number(at: 29)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 30)
		try payload.set(timeUsec, at: 0)
		try payload.set(angleX, at: 8)
		try payload.set(angleY, at: 12)
		try payload.set(distance, at: 16)
		try payload.set(sizeX, at: 20)
		try payload.set(sizeY, at: 24)
		try payload.set(targetNum, at: 28)
		try payload.set(frame, at: 29)
        return payload
    }
}
