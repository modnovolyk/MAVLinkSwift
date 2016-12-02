//
//  AhrsArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status of DCM attitude estimator
public struct Ahrs {

	/// X gyro drift estimate rad/s
	public let omegaix: Float

	/// Y gyro drift estimate rad/s
	public let omegaiy: Float

	/// Z gyro drift estimate rad/s
	public let omegaiz: Float

	/// average accel_weight
	public let accelWeight: Float

	/// average renormalisation value
	public let renormVal: Float

	/// average error_roll_pitch value
	public let errorRp: Float

	/// average error_yaw value
	public let errorYaw: Float
}

extension Ahrs: Message {
    public static let id = UInt8(163)
    public static var typeName = "AHRS"
    public static var typeDescription = "Status of DCM attitude estimator"
    public static var fieldDefinitions: [FieldDefinition] = [("omegaix", 0, "Float", 0, "X gyro drift estimate rad/s"), ("omegaiy", 4, "Float", 0, "Y gyro drift estimate rad/s"), ("omegaiz", 8, "Float", 0, "Z gyro drift estimate rad/s"), ("accelWeight", 12, "Float", 0, "average accel_weight"), ("renormVal", 16, "Float", 0, "average renormalisation value"), ("errorRp", 20, "Float", 0, "average error_roll_pitch value"), ("errorYaw", 24, "Float", 0, "average error_yaw value")]

    public init(data: Data) throws {
		omegaix = try data.number(at: 0)
		omegaiy = try data.number(at: 4)
		omegaiz = try data.number(at: 8)
		accelWeight = try data.number(at: 12)
		renormVal = try data.number(at: 16)
		errorRp = try data.number(at: 20)
		errorYaw = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(omegaix, at: 0)
		try payload.set(omegaiy, at: 4)
		try payload.set(omegaiz, at: 8)
		try payload.set(accelWeight, at: 12)
		try payload.set(renormVal, at: 16)
		try payload.set(errorRp, at: 20)
		try payload.set(errorYaw, at: 24)
        return payload
    }
}
