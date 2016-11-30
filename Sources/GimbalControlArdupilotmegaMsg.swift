//
//  GimbalControlArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Control message for rate gimbal
public struct GimbalControl {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Demanded angular rate X (rad/s)
	public let demandedRateX: Float

	/// Demanded angular rate Y (rad/s)
	public let demandedRateY: Float

	/// Demanded angular rate Z (rad/s)
	public let demandedRateZ: Float
}

extension GimbalControl: Message {
    public static let id = UInt8(201)
    public static var typeName = "GIMBAL_CONTROL"
    public static var typeDescription = "Control message for rate gimbal"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 12, "UInt8", 0, "System ID"), ("targetComponent", 13, "UInt8", 0, "Component ID"), ("demandedRateX", 0, "Float", 0, "Demanded angular rate X (rad/s)"), ("demandedRateY", 4, "Float", 0, "Demanded angular rate Y (rad/s)"), ("demandedRateZ", 8, "Float", 0, "Demanded angular rate Z (rad/s)")]

    public init(data: Data) throws {
		demandedRateX = try data.number(at: 0)
		demandedRateY = try data.number(at: 4)
		demandedRateZ = try data.number(at: 8)
		targetSystem = try data.number(at: 12)
		targetComponent = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(demandedRateX, at: 0)
		try payload.set(demandedRateY, at: 4)
		try payload.set(demandedRateZ, at: 8)
		try payload.set(targetSystem, at: 12)
		try payload.set(targetComponent, at: 13)
        return payload
    }
}
