//
//  AttitudeTargetCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Reports the current commanded attitude of the vehicle as specified by the autopilot. This should match the commands sent in a SET_ATTITUDE_TARGET message if the vehicle is being controlled this way.
public struct AttitudeTarget {

	/// Timestamp in milliseconds since system boot
	public let timeBootMs: UInt32

	/// Mappings: If any of these bits are set, the corresponding input should be ignored: bit 1: body roll rate, bit 2: body pitch rate, bit 3: body yaw rate. bit 4-bit 7: reserved, bit 8: attitude
	public let typeMask: UInt8

	/// Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)
	public let q: [Float]

	/// Body roll rate in radians per second
	public let bodyRollRate: Float

	/// Body roll rate in radians per second
	public let bodyPitchRate: Float

	/// Body roll rate in radians per second
	public let bodyYawRate: Float

	/// Collective thrust, normalized to 0 .. 1 (-1 .. 1 for vehicles capable of reverse trust)
	public let thrust: Float
}

extension AttitudeTarget: Message {
    public static let id = UInt8(83)
    public static var typeName = "ATTITUDE_TARGET"
    public static var typeDescription = "Reports the current commanded attitude of the vehicle as specified by the autopilot. This should match the commands sent in a SET_ATTITUDE_TARGET message if the vehicle is being controlled this way."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp in milliseconds since system boot"), ("typeMask", 36, "UInt8", 0, "Mappings: If any of these bits are set, the corresponding input should be ignored: bit 1: body roll rate, bit 2: body pitch rate, bit 3: body yaw rate. bit 4-bit 7: reserved, bit 8: attitude"), ("q", 4, "[Float]", 4, "Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0)"), ("bodyRollRate", 20, "Float", 0, "Body roll rate in radians per second"), ("bodyPitchRate", 24, "Float", 0, "Body roll rate in radians per second"), ("bodyYawRate", 28, "Float", 0, "Body roll rate in radians per second"), ("thrust", 32, "Float", 0, "Collective thrust, normalized to 0 .. 1 (-1 .. 1 for vehicles capable of reverse trust)")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		q = try data.array(at: 4, capacity: 4)
		bodyRollRate = try data.number(at: 20)
		bodyPitchRate = try data.number(at: 24)
		bodyYawRate = try data.number(at: 28)
		thrust = try data.number(at: 32)
		typeMask = try data.number(at: 36)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 37)
		try payload.set(timeBootMs, at: 0)
		try payload.set(q, at: 4, capacity: 4)
		try payload.set(bodyRollRate, at: 20)
		try payload.set(bodyPitchRate, at: 24)
		try payload.set(bodyYawRate, at: 28)
		try payload.set(thrust, at: 32)
		try payload.set(typeMask, at: 36)
        return payload
    }
}
