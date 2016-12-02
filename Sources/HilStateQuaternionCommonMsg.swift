//
//  HilStateQuaternionCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Sent from simulation to autopilot, avoids in contrast to HIL_STATE singularities. This packet is useful for high throughput applications such as hardware in the loop simulations.
public struct HilStateQuaternion {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// Vehicle attitude expressed as normalized quaternion in w, x, y, z order (with 1 0 0 0 being the null-rotation)
	public let attitudeQuaternion: [Float]

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

	/// Indicated airspeed, expressed as m/s * 100
	public let indAirspeed: UInt16

	/// True airspeed, expressed as m/s * 100
	public let trueAirspeed: UInt16

	/// X acceleration (mg)
	public let xacc: Int16

	/// Y acceleration (mg)
	public let yacc: Int16

	/// Z acceleration (mg)
	public let zacc: Int16
}

extension HilStateQuaternion: Message {
    public static let id = UInt8(115)
    public static var typeName = "HIL_STATE_QUATERNION"
    public static var typeDescription = "Sent from simulation to autopilot, avoids in contrast to HIL_STATE singularities. This packet is useful for high throughput applications such as hardware in the loop simulations."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("attitudeQuaternion", 8, "[Float]", 4, "Vehicle attitude expressed as normalized quaternion in w, x, y, z order (with 1 0 0 0 being the null-rotation)"), ("rollspeed", 24, "Float", 0, "Body frame roll / phi angular speed (rad/s)"), ("pitchspeed", 28, "Float", 0, "Body frame pitch / theta angular speed (rad/s)"), ("yawspeed", 32, "Float", 0, "Body frame yaw / psi angular speed (rad/s)"), ("lat", 36, "Int32", 0, "Latitude, expressed as * 1E7"), ("lon", 40, "Int32", 0, "Longitude, expressed as * 1E7"), ("alt", 44, "Int32", 0, "Altitude in meters, expressed as * 1000 (millimeters)"), ("vx", 48, "Int16", 0, "Ground X Speed (Latitude), expressed as m/s * 100"), ("vy", 50, "Int16", 0, "Ground Y Speed (Longitude), expressed as m/s * 100"), ("vz", 52, "Int16", 0, "Ground Z Speed (Altitude), expressed as m/s * 100"), ("indAirspeed", 54, "UInt16", 0, "Indicated airspeed, expressed as m/s * 100"), ("trueAirspeed", 56, "UInt16", 0, "True airspeed, expressed as m/s * 100"), ("xacc", 58, "Int16", 0, "X acceleration (mg)"), ("yacc", 60, "Int16", 0, "Y acceleration (mg)"), ("zacc", 62, "Int16", 0, "Z acceleration (mg)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		attitudeQuaternion = try data.array(at: 8, capacity: 4)
		rollspeed = try data.number(at: 24)
		pitchspeed = try data.number(at: 28)
		yawspeed = try data.number(at: 32)
		lat = try data.number(at: 36)
		lon = try data.number(at: 40)
		alt = try data.number(at: 44)
		vx = try data.number(at: 48)
		vy = try data.number(at: 50)
		vz = try data.number(at: 52)
		indAirspeed = try data.number(at: 54)
		trueAirspeed = try data.number(at: 56)
		xacc = try data.number(at: 58)
		yacc = try data.number(at: 60)
		zacc = try data.number(at: 62)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 64)
		try payload.set(timeUsec, at: 0)
		try payload.set(attitudeQuaternion, at: 8, capacity: 4)
		try payload.set(rollspeed, at: 24)
		try payload.set(pitchspeed, at: 28)
		try payload.set(yawspeed, at: 32)
		try payload.set(lat, at: 36)
		try payload.set(lon, at: 40)
		try payload.set(alt, at: 44)
		try payload.set(vx, at: 48)
		try payload.set(vy, at: 50)
		try payload.set(vz, at: 52)
		try payload.set(indAirspeed, at: 54)
		try payload.set(trueAirspeed, at: 56)
		try payload.set(xacc, at: 58)
		try payload.set(yacc, at: 60)
		try payload.set(zacc, at: 62)
        return payload
    }
}
