//
//  AttPosMocapCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Motion capture attitude and position
public struct AttPosMocap {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)
	public let q: [Float]

	/// X position in meters (NED)
	public let x: Float

	/// Y position in meters (NED)
	public let y: Float

	/// Z position in meters (NED)
	public let z: Float
}

extension AttPosMocap: Message {
    public static let id = UInt8(138)
    public static var typeName = "ATT_POS_MOCAP"
    public static var typeDescription = "Motion capture attitude and position"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("q", 8, "[Float]", 4, "Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)"), ("x", 24, "Float", 0, "X position in meters (NED)"), ("y", 28, "Float", 0, "Y position in meters (NED)"), ("z", 32, "Float", 0, "Z position in meters (NED)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		q = try data.array(at: 8, capacity: 4)
		x = try data.number(at: 24)
		y = try data.number(at: 28)
		z = try data.number(at: 32)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 36)
		try payload.set(timeUsec, at: 0)
		try payload.set(q, at: 8, capacity: 4)
		try payload.set(x, at: 24)
		try payload.set(y, at: 28)
		try payload.set(z, at: 32)
        return payload
    }
}
