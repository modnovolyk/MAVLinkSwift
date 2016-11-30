//
//  ControlSystemStateCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The smoothed, monotonic system state used to feed the control loops of the system.
public struct ControlSystemState {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// X acceleration in body frame
	public let xAcc: Float

	/// Y acceleration in body frame
	public let yAcc: Float

	/// Z acceleration in body frame
	public let zAcc: Float

	/// X velocity in body frame
	public let xVel: Float

	/// Y velocity in body frame
	public let yVel: Float

	/// Z velocity in body frame
	public let zVel: Float

	/// X position in local frame
	public let xPos: Float

	/// Y position in local frame
	public let yPos: Float

	/// Z position in local frame
	public let zPos: Float

	/// Airspeed, set to -1 if unknown
	public let airspeed: Float

	/// Variance of body velocity estimate
	public let velVariance: [Float]

	/// Variance in local position
	public let posVariance: [Float]

	/// The attitude, represented as Quaternion
	public let q: [Float]

	/// Angular rate in roll axis
	public let rollRate: Float

	/// Angular rate in pitch axis
	public let pitchRate: Float

	/// Angular rate in yaw axis
	public let yawRate: Float
}

extension ControlSystemState: Message {
    public static let id = UInt8(146)
    public static var typeName = "CONTROL_SYSTEM_STATE"
    public static var typeDescription = "The smoothed, monotonic system state used to feed the control loops of the system."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("xAcc", 8, "Float", 0, "X acceleration in body frame"), ("yAcc", 12, "Float", 0, "Y acceleration in body frame"), ("zAcc", 16, "Float", 0, "Z acceleration in body frame"), ("xVel", 20, "Float", 0, "X velocity in body frame"), ("yVel", 24, "Float", 0, "Y velocity in body frame"), ("zVel", 28, "Float", 0, "Z velocity in body frame"), ("xPos", 32, "Float", 0, "X position in local frame"), ("yPos", 36, "Float", 0, "Y position in local frame"), ("zPos", 40, "Float", 0, "Z position in local frame"), ("airspeed", 44, "Float", 0, "Airspeed, set to -1 if unknown"), ("velVariance", 48, "[Float]", 3, "Variance of body velocity estimate"), ("posVariance", 60, "[Float]", 3, "Variance in local position"), ("q", 72, "[Float]", 4, "The attitude, represented as Quaternion"), ("rollRate", 88, "Float", 0, "Angular rate in roll axis"), ("pitchRate", 92, "Float", 0, "Angular rate in pitch axis"), ("yawRate", 96, "Float", 0, "Angular rate in yaw axis")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		xAcc = try data.number(at: 8)
		yAcc = try data.number(at: 12)
		zAcc = try data.number(at: 16)
		xVel = try data.number(at: 20)
		yVel = try data.number(at: 24)
		zVel = try data.number(at: 28)
		xPos = try data.number(at: 32)
		yPos = try data.number(at: 36)
		zPos = try data.number(at: 40)
		airspeed = try data.number(at: 44)
		velVariance = try data.array(at: 48, capacity: 3)
		posVariance = try data.array(at: 60, capacity: 3)
		q = try data.array(at: 72, capacity: 4)
		rollRate = try data.number(at: 88)
		pitchRate = try data.number(at: 92)
		yawRate = try data.number(at: 96)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 100)
		try payload.set(timeUsec, at: 0)
		try payload.set(xAcc, at: 8)
		try payload.set(yAcc, at: 12)
		try payload.set(zAcc, at: 16)
		try payload.set(xVel, at: 20)
		try payload.set(yVel, at: 24)
		try payload.set(zVel, at: 28)
		try payload.set(xPos, at: 32)
		try payload.set(yPos, at: 36)
		try payload.set(zPos, at: 40)
		try payload.set(airspeed, at: 44)
		try payload.set(velVariance, at: 48, capacity: 3)
		try payload.set(posVariance, at: 60, capacity: 3)
		try payload.set(q, at: 72, capacity: 4)
		try payload.set(rollRate, at: 88)
		try payload.set(pitchRate, at: 92)
		try payload.set(yawRate, at: 96)
        return payload
    }
}
