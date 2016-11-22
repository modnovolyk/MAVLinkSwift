//
//  HIL_STATE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// DEPRECATED PACKET! Suffers from missing airspeed fields and singularities due to Euler angles. Please use HIL_STATE_QUATERNION instead. Sent from simulation to autopilot. This packet is useful for high throughput applications such as hardware in the loop simulations.
public struct HilState {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// Roll angle (rad)
	public let roll: Float

	/// Pitch angle (rad)
	public let pitch: Float

	/// Yaw angle (rad)
	public let yaw: Float

	/// Body frame roll / phi angular speed (rad/s)
	public let rollspeed: Float

	/// Body frame pitch / theta angular speed (rad/s)
	public let pitchspeed: Float

	/// Body frame yaw / psi angular speed (rad/s)
	public let yawspeed: Float

	/// Latitude, expressed as * 1E7
	public let lat: Int32

	/// Longitude, expressed as * 1E7
	public let lon: Int32

	/// Altitude in meters, expressed as * 1000 (millimeters)
	public let alt: Int32

	/// Ground X Speed (Latitude), expressed as m/s * 100
	public let vx: Int16

	/// Ground Y Speed (Longitude), expressed as m/s * 100
	public let vy: Int16

	/// Ground Z Speed (Altitude), expressed as m/s * 100
	public let vz: Int16

	/// X acceleration (mg)
	public let xacc: Int16

	/// Y acceleration (mg)
	public let yacc: Int16

	/// Z acceleration (mg)
	public let zacc: Int16
}

extension HilState: Message {
    public static let id = UInt8(90)
    public static var typeName = "HIL_STATE"
    public static var typeDescription = "DEPRECATED PACKET! Suffers from missing airspeed fields and singularities due to Euler angles. Please use HIL_STATE_QUATERNION instead. Sent from simulation to autopilot. This packet is useful for high throughput applications such as hardware in the loop simulations."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("roll", 8, "Float", 0, "Roll angle (rad)"), ("pitch", 12, "Float", 0, "Pitch angle (rad)"), ("yaw", 16, "Float", 0, "Yaw angle (rad)"), ("rollspeed", 20, "Float", 0, "Body frame roll / phi angular speed (rad/s)"), ("pitchspeed", 24, "Float", 0, "Body frame pitch / theta angular speed (rad/s)"), ("yawspeed", 28, "Float", 0, "Body frame yaw / psi angular speed (rad/s)"), ("lat", 32, "Int32", 0, "Latitude, expressed as * 1E7"), ("lon", 36, "Int32", 0, "Longitude, expressed as * 1E7"), ("alt", 40, "Int32", 0, "Altitude in meters, expressed as * 1000 (millimeters)"), ("vx", 44, "Int16", 0, "Ground X Speed (Latitude), expressed as m/s * 100"), ("vy", 46, "Int16", 0, "Ground Y Speed (Longitude), expressed as m/s * 100"), ("vz", 48, "Int16", 0, "Ground Z Speed (Altitude), expressed as m/s * 100"), ("xacc", 50, "Int16", 0, "X acceleration (mg)"), ("yacc", 52, "Int16", 0, "Y acceleration (mg)"), ("zacc", 54, "Int16", 0, "Z acceleration (mg)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		roll = try data.number(at: 8)
		pitch = try data.number(at: 12)
		yaw = try data.number(at: 16)
		rollspeed = try data.number(at: 20)
		pitchspeed = try data.number(at: 24)
		yawspeed = try data.number(at: 28)
		lat = try data.number(at: 32)
		lon = try data.number(at: 36)
		alt = try data.number(at: 40)
		vx = try data.number(at: 44)
		vy = try data.number(at: 46)
		vz = try data.number(at: 48)
		xacc = try data.number(at: 50)
		yacc = try data.number(at: 52)
		zacc = try data.number(at: 54)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 56)
		try payload.set(timeUsec, at: 0)
		try payload.set(roll, at: 8)
		try payload.set(pitch, at: 12)
		try payload.set(yaw, at: 16)
		try payload.set(rollspeed, at: 20)
		try payload.set(pitchspeed, at: 24)
		try payload.set(yawspeed, at: 28)
		try payload.set(lat, at: 32)
		try payload.set(lon, at: 36)
		try payload.set(alt, at: 40)
		try payload.set(vx, at: 44)
		try payload.set(vy, at: 46)
		try payload.set(vz, at: 48)
		try payload.set(xacc, at: 50)
		try payload.set(yacc, at: 52)
		try payload.set(zacc, at: 54)
        return payload
    }
}
