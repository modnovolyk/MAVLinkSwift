//
//  PositionTargetLocalNEDCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Reports the current commanded vehicle position, velocity, and acceleration as specified by the autopilot. This should match the commands sent in SET_POSITION_TARGET_LOCAL_NED if the vehicle is being controlled this way.
public struct PositionTargetLocalNED {

	/// Timestamp in milliseconds since system boot
	public let timeBootMs: UInt32

	/// Valid options are: MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, MAV_FRAME_BODY_OFFSET_NED = 9
	public let coordinateFrame: MAVFrame

	/// Bitmask to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 10 is set the floats afx afy afz should be interpreted as force instead of acceleration. Mapping: bit 1: x, bit 2: y, bit 3: z, bit 4: vx, bit 5: vy, bit 6: vz, bit 7: ax, bit 8: ay, bit 9: az, bit 10: is force setpoint, bit 11: yaw, bit 12: yaw rate
	public let typeMask: UInt16

	/// X Position in NED frame in meters
	public let x: Float

	/// Y Position in NED frame in meters
	public let y: Float

	/// Z Position in NED frame in meters (note, altitude is negative in NED)
	public let z: Float

	/// X velocity in NED frame in meter / s
	public let vx: Float

	/// Y velocity in NED frame in meter / s
	public let vy: Float

	/// Z velocity in NED frame in meter / s
	public let vz: Float

	/// X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
	public let afx: Float

	/// Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
	public let afy: Float

	/// Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
	public let afz: Float

	/// yaw setpoint in rad
	public let yaw: Float

	/// yaw rate setpoint in rad/s
	public let yawRate: Float
}

extension PositionTargetLocalNED: Message {
    public static let id = UInt8(85)
    public static var typeName = "POSITION_TARGET_LOCAL_NED"
    public static var typeDescription = "Reports the current commanded vehicle position, velocity, and acceleration as specified by the autopilot. This should match the commands sent in SET_POSITION_TARGET_LOCAL_NED if the vehicle is being controlled this way."
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp in milliseconds since system boot"), ("coordinateFrame", 50, "MAVFrame", 0, "Valid options are: MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, MAV_FRAME_BODY_OFFSET_NED = 9"), ("typeMask", 48, "UInt16", 0, "Bitmask to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 10 is set the floats afx afy afz should be interpreted as force instead of acceleration. Mapping: bit 1: x, bit 2: y, bit 3: z, bit 4: vx, bit 5: vy, bit 6: vz, bit 7: ax, bit 8: ay, bit 9: az, bit 10: is force setpoint, bit 11: yaw, bit 12: yaw rate"), ("x", 4, "Float", 0, "X Position in NED frame in meters"), ("y", 8, "Float", 0, "Y Position in NED frame in meters"), ("z", 12, "Float", 0, "Z Position in NED frame in meters (note, altitude is negative in NED)"), ("vx", 16, "Float", 0, "X velocity in NED frame in meter / s"), ("vy", 20, "Float", 0, "Y velocity in NED frame in meter / s"), ("vz", 24, "Float", 0, "Z velocity in NED frame in meter / s"), ("afx", 28, "Float", 0, "X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N"), ("afy", 32, "Float", 0, "Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N"), ("afz", 36, "Float", 0, "Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N"), ("yaw", 40, "Float", 0, "yaw setpoint in rad"), ("yawRate", 44, "Float", 0, "yaw rate setpoint in rad/s")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		x = try data.number(at: 4)
		y = try data.number(at: 8)
		z = try data.number(at: 12)
		vx = try data.number(at: 16)
		vy = try data.number(at: 20)
		vz = try data.number(at: 24)
		afx = try data.number(at: 28)
		afy = try data.number(at: 32)
		afz = try data.number(at: 36)
		yaw = try data.number(at: 40)
		yawRate = try data.number(at: 44)
		typeMask = try data.number(at: 48)
		coordinateFrame = try data.enumeration(at: 50)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 51)
		try payload.set(timeBootMs, at: 0)
		try payload.set(x, at: 4)
		try payload.set(y, at: 8)
		try payload.set(z, at: 12)
		try payload.set(vx, at: 16)
		try payload.set(vy, at: 20)
		try payload.set(vz, at: 24)
		try payload.set(afx, at: 28)
		try payload.set(afy, at: 32)
		try payload.set(afz, at: 36)
		try payload.set(yaw, at: 40)
		try payload.set(yawRate, at: 44)
		try payload.set(typeMask, at: 48)
		try payload.set(coordinateFrame, at: 50)
        return payload
    }
}
