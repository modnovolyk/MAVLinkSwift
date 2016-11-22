//
//  GIMBAL_REPORT.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// 3 axis gimbal mesuraments
public struct GimbalReport {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Time since last update (seconds)
	public let deltaTime: Float

	/// Delta angle X (radians)
	public let deltaAngleX: Float

	/// Delta angle Y (radians)
	public let deltaAngleY: Float

	/// Delta angle X (radians)
	public let deltaAngleZ: Float

	/// Delta velocity X (m/s)
	public let deltaVelocityX: Float

	/// Delta velocity Y (m/s)
	public let deltaVelocityY: Float

	/// Delta velocity Z (m/s)
	public let deltaVelocityZ: Float

	/// Joint ROLL (radians)
	public let jointRoll: Float

	/// Joint EL (radians)
	public let jointEl: Float

	/// Joint AZ (radians)
	public let jointAz: Float
}

extension GimbalReport: Message {
    public static let id = UInt8(200)
    public static var typeName = "GIMBAL_REPORT"
    public static var typeDescription = "3 axis gimbal mesuraments"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 40, "UInt8", 0, "System ID"), ("targetComponent", 41, "UInt8", 0, "Component ID"), ("deltaTime", 0, "Float", 0, "Time since last update (seconds)"), ("deltaAngleX", 4, "Float", 0, "Delta angle X (radians)"), ("deltaAngleY", 8, "Float", 0, "Delta angle Y (radians)"), ("deltaAngleZ", 12, "Float", 0, "Delta angle X (radians)"), ("deltaVelocityX", 16, "Float", 0, "Delta velocity X (m/s)"), ("deltaVelocityY", 20, "Float", 0, "Delta velocity Y (m/s)"), ("deltaVelocityZ", 24, "Float", 0, "Delta velocity Z (m/s)"), ("jointRoll", 28, "Float", 0, "Joint ROLL (radians)"), ("jointEl", 32, "Float", 0, "Joint EL (radians)"), ("jointAz", 36, "Float", 0, "Joint AZ (radians)")]

    public init(data: Data) throws {
		deltaTime = try data.number(at: 0)
		deltaAngleX = try data.number(at: 4)
		deltaAngleY = try data.number(at: 8)
		deltaAngleZ = try data.number(at: 12)
		deltaVelocityX = try data.number(at: 16)
		deltaVelocityY = try data.number(at: 20)
		deltaVelocityZ = try data.number(at: 24)
		jointRoll = try data.number(at: 28)
		jointEl = try data.number(at: 32)
		jointAz = try data.number(at: 36)
		targetSystem = try data.number(at: 40)
		targetComponent = try data.number(at: 41)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(deltaTime, at: 0)
		try payload.set(deltaAngleX, at: 4)
		try payload.set(deltaAngleY, at: 8)
		try payload.set(deltaAngleZ, at: 12)
		try payload.set(deltaVelocityX, at: 16)
		try payload.set(deltaVelocityY, at: 20)
		try payload.set(deltaVelocityZ, at: 24)
		try payload.set(jointRoll, at: 28)
		try payload.set(jointEl, at: 32)
		try payload.set(jointAz, at: 36)
		try payload.set(targetSystem, at: 40)
		try payload.set(targetComponent, at: 41)
        return payload
    }
}
