//
//  GimbalTorqueCmdReportArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// 100 Hz gimbal torque command telemetry
public struct GimbalTorqueCmdReport {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Roll Torque Command
	public let rlTorqueCmd: Int16

	/// Elevation Torque Command
	public let elTorqueCmd: Int16

	/// Azimuth Torque Command
	public let azTorqueCmd: Int16
}

extension GimbalTorqueCmdReport: Message {
    public static let id = UInt8(214)
    public static var typeName = "GIMBAL_TORQUE_CMD_REPORT"
    public static var typeDescription = "100 Hz gimbal torque command telemetry"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 6, "UInt8", 0, "System ID"), ("targetComponent", 7, "UInt8", 0, "Component ID"), ("rlTorqueCmd", 0, "Int16", 0, "Roll Torque Command"), ("elTorqueCmd", 2, "Int16", 0, "Elevation Torque Command"), ("azTorqueCmd", 4, "Int16", 0, "Azimuth Torque Command")]

    public init(data: Data) throws {
		rlTorqueCmd = try data.number(at: 0)
		elTorqueCmd = try data.number(at: 2)
		azTorqueCmd = try data.number(at: 4)
		targetSystem = try data.number(at: 6)
		targetComponent = try data.number(at: 7)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(rlTorqueCmd, at: 0)
		try payload.set(elTorqueCmd, at: 2)
		try payload.set(azTorqueCmd, at: 4)
		try payload.set(targetSystem, at: 6)
		try payload.set(targetComponent, at: 7)
        return payload
    }
}
