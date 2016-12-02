//
//  AttitudeQuaternionCovCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
public struct AttitudeQuaternionCov {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation)
	public let q: [Float]

	/// Roll angular speed (rad/s)
	public let rollspeed: Float

	/// Pitch angular speed (rad/s)
	public let pitchspeed: Float

	/// Yaw angular speed (rad/s)
	public let yawspeed: Float

	/// Attitude covariance
	public let covariance: [Float]
}

extension AttitudeQuaternionCov: Message {
    public static let id = UInt8(61)
    public static var typeName = "ATTITUDE_QUATERNION_COV"
    public static var typeDescription = "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("q", 4, "[Float]", 4, "Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation)"), ("rollspeed", 20, "Float", 0, "Roll angular speed (rad/s)"), ("pitchspeed", 24, "Float", 0, "Pitch angular speed (rad/s)"), ("yawspeed", 28, "Float", 0, "Yaw angular speed (rad/s)"), ("covariance", 32, "[Float]", 9, "Attitude covariance")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		q = try data.array(at: 4, capacity: 4)
		rollspeed = try data.number(at: 20)
		pitchspeed = try data.number(at: 24)
		yawspeed = try data.number(at: 28)
		covariance = try data.array(at: 32, capacity: 9)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 68)
		try payload.set(timeBootMs, at: 0)
		try payload.set(q, at: 4, capacity: 4)
		try payload.set(rollspeed, at: 20)
		try payload.set(pitchspeed, at: 24)
		try payload.set(yawspeed, at: 28)
		try payload.set(covariance, at: 32, capacity: 9)
        return payload
    }
}
