//
//  SIMSTATE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status of simulation environment, if used
public struct Simstate {

	/// Roll angle (rad)
	public let roll: Float

	/// Pitch angle (rad)
	public let pitch: Float

	/// Yaw angle (rad)
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

	/// Latitude in degrees * 1E7
	public let lat: Int32

	/// Longitude in degrees * 1E7
	public let lng: Int32
}

extension Simstate: Message {
    public static let id = UInt8(164)
    public static var typeName = "SIMSTATE"
    public static var typeDescription = "Status of simulation environment, if used"
    public static var fieldDefinitions: [FieldDefinition] = [("roll", 0, "Float", 0, "Roll angle (rad)"), ("pitch", 4, "Float", 0, "Pitch angle (rad)"), ("yaw", 8, "Float", 0, "Yaw angle (rad)"), ("xacc", 12, "Float", 0, "X acceleration m/s/s"), ("yacc", 16, "Float", 0, "Y acceleration m/s/s"), ("zacc", 20, "Float", 0, "Z acceleration m/s/s"), ("xgyro", 24, "Float", 0, "Angular speed around X axis rad/s"), ("ygyro", 28, "Float", 0, "Angular speed around Y axis rad/s"), ("zgyro", 32, "Float", 0, "Angular speed around Z axis rad/s"), ("lat", 36, "Int32", 0, "Latitude in degrees * 1E7"), ("lng", 40, "Int32", 0, "Longitude in degrees * 1E7")]

    public init(data: Data) throws {
		roll = try data.number(at: 0)
		pitch = try data.number(at: 4)
		yaw = try data.number(at: 8)
		xacc = try data.number(at: 12)
		yacc = try data.number(at: 16)
		zacc = try data.number(at: 20)
		xgyro = try data.number(at: 24)
		ygyro = try data.number(at: 28)
		zgyro = try data.number(at: 32)
		lat = try data.number(at: 36)
		lng = try data.number(at: 40)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 44)
		try payload.set(roll, at: 0)
		try payload.set(pitch, at: 4)
		try payload.set(yaw, at: 8)
		try payload.set(xacc, at: 12)
		try payload.set(yacc, at: 16)
		try payload.set(zacc, at: 20)
		try payload.set(xgyro, at: 24)
		try payload.set(ygyro, at: 28)
		try payload.set(zgyro, at: 32)
		try payload.set(lat, at: 36)
		try payload.set(lng, at: 40)
        return payload
    }
}
