//
//  ATTITUDE_QUATERNION.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
public struct AttitudeQuaternion {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// Quaternion component 1, w (1 in null-rotation)
	public let q1: Float

	/// Quaternion component 2, x (0 in null-rotation)
	public let q2: Float

	/// Quaternion component 3, y (0 in null-rotation)
	public let q3: Float

	/// Quaternion component 4, z (0 in null-rotation)
	public let q4: Float

	/// Roll angular speed (rad/s)
	public let rollspeed: Float

	/// Pitch angular speed (rad/s)
	public let pitchspeed: Float

	/// Yaw angular speed (rad/s)
	public let yawspeed: Float
}

extension AttitudeQuaternion: Message {
    public static let id = UInt8(31)
    public static var typeName = "ATTITUDE_QUATERNION"
    public static var typeDescription = "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0)."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("q1", 4, "Float", 0, "Quaternion component 1, w (1 in null-rotation)"), ("q2", 8, "Float", 0, "Quaternion component 2, x (0 in null-rotation)"), ("q3", 12, "Float", 0, "Quaternion component 3, y (0 in null-rotation)"), ("q4", 16, "Float", 0, "Quaternion component 4, z (0 in null-rotation)"), ("rollspeed", 20, "Float", 0, "Roll angular speed (rad/s)"), ("pitchspeed", 24, "Float", 0, "Pitch angular speed (rad/s)"), ("yawspeed", 28, "Float", 0, "Yaw angular speed (rad/s)")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		q1 = try data.number(at: 4)
		q2 = try data.number(at: 8)
		q3 = try data.number(at: 12)
		q4 = try data.number(at: 16)
		rollspeed = try data.number(at: 20)
		pitchspeed = try data.number(at: 24)
		yawspeed = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(timeBootMs, at: 0)
		try payload.set(q1, at: 4)
		try payload.set(q2, at: 8)
		try payload.set(q3, at: 12)
		try payload.set(q4, at: 16)
		try payload.set(rollspeed, at: 20)
		try payload.set(pitchspeed, at: 24)
		try payload.set(yawspeed, at: 28)
        return payload
    }
}
