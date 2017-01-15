//
//  SimStateCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Status of simulation environment, if used
public struct SimState {

	/// True attitude quaternion component 1, w (1 in null-rotation)
	public let q1: Float

	/// True attitude quaternion component 2, x (0 in null-rotation)
	public let q2: Float

	/// True attitude quaternion component 3, y (0 in null-rotation)
	public let q3: Float

	/// True attitude quaternion component 4, z (0 in null-rotation)
	public let q4: Float

	/// Attitude roll expressed as Euler angles, not recommended except for human-readable outputs
	public let roll: Float

	/// Attitude pitch expressed as Euler angles, not recommended except for human-readable outputs
	public let pitch: Float

	/// Attitude yaw expressed as Euler angles, not recommended except for human-readable outputs
	public let yaw: Float

	/// X acceleration m/s/s
	public let xacc: Float

	/// Y acceleration m/s/s
	public let yacc: Float

	/// Z acceleration m/s/s
	public let zacc: Float

	/// Angular speed around X axis rad/s
	public let xgyro: Float

	/// Angular speed around Y axis rad/s
	public let ygyro: Float

	/// Angular speed around Z axis rad/s
	public let zgyro: Float

	/// Latitude in degrees
	public let lat: Float

	/// Longitude in degrees
	public let lon: Float

	/// Altitude in meters
	public let alt: Float

	/// Horizontal position standard deviation
	public let stdDevHorz: Float

	/// Vertical position standard deviation
	public let stdDevVert: Float

	/// True velocity in m/s in NORTH direction in earth-fixed NED frame
	public let vn: Float

	/// True velocity in m/s in EAST direction in earth-fixed NED frame
	public let ve: Float

	/// True velocity in m/s in DOWN direction in earth-fixed NED frame
	public let vd: Float
}

extension SimState: Message {
    public static let id = UInt8(108)
    public static var typeName = "SIM_STATE"
    public static var typeDescription = "Status of simulation environment, if used"
    public static var fieldDefinitions: [FieldDefinition] = [("q1", 0, "Float", 0, "True attitude quaternion component 1, w (1 in null-rotation)"), ("q2", 4, "Float", 0, "True attitude quaternion component 2, x (0 in null-rotation)"), ("q3", 8, "Float", 0, "True attitude quaternion component 3, y (0 in null-rotation)"), ("q4", 12, "Float", 0, "True attitude quaternion component 4, z (0 in null-rotation)"), ("roll", 16, "Float", 0, "Attitude roll expressed as Euler angles, not recommended except for human-readable outputs"), ("pitch", 20, "Float", 0, "Attitude pitch expressed as Euler angles, not recommended except for human-readable outputs"), ("yaw", 24, "Float", 0, "Attitude yaw expressed as Euler angles, not recommended except for human-readable outputs"), ("xacc", 28, "Float", 0, "X acceleration m/s/s"), ("yacc", 32, "Float", 0, "Y acceleration m/s/s"), ("zacc", 36, "Float", 0, "Z acceleration m/s/s"), ("xgyro", 40, "Float", 0, "Angular speed around X axis rad/s"), ("ygyro", 44, "Float", 0, "Angular speed around Y axis rad/s"), ("zgyro", 48, "Float", 0, "Angular speed around Z axis rad/s"), ("lat", 52, "Float", 0, "Latitude in degrees"), ("lon", 56, "Float", 0, "Longitude in degrees"), ("alt", 60, "Float", 0, "Altitude in meters"), ("stdDevHorz", 64, "Float", 0, "Horizontal position standard deviation"), ("stdDevVert", 68, "Float", 0, "Vertical position standard deviation"), ("vn", 72, "Float", 0, "True velocity in m/s in NORTH direction in earth-fixed NED frame"), ("ve", 76, "Float", 0, "True velocity in m/s in EAST direction in earth-fixed NED frame"), ("vd", 80, "Float", 0, "True velocity in m/s in DOWN direction in earth-fixed NED frame")]

    public init(data: Data) throws {
		q1 = try data.number(at: 0)
		q2 = try data.number(at: 4)
		q3 = try data.number(at: 8)
		q4 = try data.number(at: 12)
		roll = try data.number(at: 16)
		pitch = try data.number(at: 20)
		yaw = try data.number(at: 24)
		xacc = try data.number(at: 28)
		yacc = try data.number(at: 32)
		zacc = try data.number(at: 36)
		xgyro = try data.number(at: 40)
		ygyro = try data.number(at: 44)
		zgyro = try data.number(at: 48)
		lat = try data.number(at: 52)
		lon = try data.number(at: 56)
		alt = try data.number(at: 60)
		stdDevHorz = try data.number(at: 64)
		stdDevVert = try data.number(at: 68)
		vn = try data.number(at: 72)
		ve = try data.number(at: 76)
		vd = try data.number(at: 80)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 84)
		try payload.set(q1, at: 0)
		try payload.set(q2, at: 4)
		try payload.set(q3, at: 8)
		try payload.set(q4, at: 12)
		try payload.set(roll, at: 16)
		try payload.set(pitch, at: 20)
		try payload.set(yaw, at: 24)
		try payload.set(xacc, at: 28)
		try payload.set(yacc, at: 32)
		try payload.set(zacc, at: 36)
		try payload.set(xgyro, at: 40)
		try payload.set(ygyro, at: 44)
		try payload.set(zgyro, at: 48)
		try payload.set(lat, at: 52)
		try payload.set(lon, at: 56)
		try payload.set(alt, at: 60)
		try payload.set(stdDevHorz, at: 64)
		try payload.set(stdDevVert, at: 68)
		try payload.set(vn, at: 72)
		try payload.set(ve, at: 76)
		try payload.set(vd, at: 80)
        return payload
    }
}
