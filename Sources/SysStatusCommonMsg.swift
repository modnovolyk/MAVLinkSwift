//
//  SysStatusCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The general system state. If the system is following the MAVLink standard, the system state is mainly defined by three orthogonal states/modes: The system mode, which is either LOCKED (motors shut down and locked), MANUAL (system under RC control), GUIDED (system with autonomous position control, position setpoint controlled manually) or AUTO (system guided by path/waypoint planner). The NAV_MODE defined the current flight state: LIFTOFF (often an open-loop maneuver), LANDING, WAYPOINTS or VECTOR. This represents the internal navigation state machine. The system status shows wether the system is currently active or not and if an emergency occured. During the CRITICAL and EMERGENCY states the MAV is still considered to be active, but should start emergency procedures autonomously. After a failure occured it should first move from active to critical to allow manual intervention and then move to emergency after a certain timeout.
public struct SysStatus {

	/// Bitmask showing which onboard controllers and sensors are present. Value of 0: not present. Value of 1: present. Indices defined by ENUM MAV_SYS_STATUS_SENSOR
	public let onboardControlSensorsPresent: UInt32

	/// Bitmask showing which onboard controllers and sensors are enabled: Value of 0: not enabled. Value of 1: enabled. Indices defined by ENUM MAV_SYS_STATUS_SENSOR
	public let onboardControlSensorsEnabled: UInt32

	/// Bitmask showing which onboard controllers and sensors are operational or have an error: Value of 0: not enabled. Value of 1: enabled. Indices defined by ENUM MAV_SYS_STATUS_SENSOR
	public let onboardControlSensorsHealth: UInt32

	/// Maximum usage in percent of the mainloop time, (0%: 0, 100%: 1000) should be always below 1000
	public let load: UInt16

	/// Battery voltage, in millivolts (1 = 1 millivolt)
	public let voltageBattery: UInt16

	/// Battery current, in 10*milliamperes (1 = 10 milliampere), -1: autopilot does not measure the current
	public let currentBattery: Int16

	/// Remaining battery energy: (0%: 0, 100%: 100), -1: autopilot estimate the remaining battery
	public let batteryRemaining: Int8

	/// Communication drops in percent, (0%: 0, 100%: 10'000), (UART, I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on reception on the MAV)
	public let dropRateComm: UInt16

	/// Communication errors (UART, I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on reception on the MAV)
	public let errorsComm: UInt16

	/// Autopilot-specific errors
	public let errorsCount1: UInt16

	/// Autopilot-specific errors
	public let errorsCount2: UInt16

	/// Autopilot-specific errors
	public let errorsCount3: UInt16

	/// Autopilot-specific errors
	public let errorsCount4: UInt16
}

extension SysStatus: Message {
    public static let id = UInt8(1)
    public static var typeName = "SYS_STATUS"
    public static var typeDescription = "The general system state. If the system is following the MAVLink standard, the system state is mainly defined by three orthogonal states/modes: The system mode, which is either LOCKED (motors shut down and locked), MANUAL (system under RC control), GUIDED (system with autonomous position control, position setpoint controlled manually) or AUTO (system guided by path/waypoint planner). The NAV_MODE defined the current flight state: LIFTOFF (often an open-loop maneuver), LANDING, WAYPOINTS or VECTOR. This represents the internal navigation state machine. The system status shows wether the system is currently active or not and if an emergency occured. During the CRITICAL and EMERGENCY states the MAV is still considered to be active, but should start emergency procedures autonomously. After a failure occured it should first move from active to critical to allow manual intervention and then move to emergency after a certain timeout."
    public static var fieldDefinitions: [FieldDefinition] = [("onboardControlSensorsPresent", 0, "UInt32", 0, "Bitmask showing which onboard controllers and sensors are present. Value of 0: not present. Value of 1: present. Indices defined by ENUM MAV_SYS_STATUS_SENSOR"), ("onboardControlSensorsEnabled", 4, "UInt32", 0, "Bitmask showing which onboard controllers and sensors are enabled: Value of 0: not enabled. Value of 1: enabled. Indices defined by ENUM MAV_SYS_STATUS_SENSOR"), ("onboardControlSensorsHealth", 8, "UInt32", 0, "Bitmask showing which onboard controllers and sensors are operational or have an error: Value of 0: not enabled. Value of 1: enabled. Indices defined by ENUM MAV_SYS_STATUS_SENSOR"), ("load", 12, "UInt16", 0, "Maximum usage in percent of the mainloop time, (0%: 0, 100%: 1000) should be always below 1000"), ("voltageBattery", 14, "UInt16", 0, "Battery voltage, in millivolts (1 = 1 millivolt)"), ("currentBattery", 16, "Int16", 0, "Battery current, in 10*milliamperes (1 = 10 milliampere), -1: autopilot does not measure the current"), ("batteryRemaining", 30, "Int8", 0, "Remaining battery energy: (0%: 0, 100%: 100), -1: autopilot estimate the remaining battery"), ("dropRateComm", 18, "UInt16", 0, "Communication drops in percent, (0%: 0, 100%: 10'000), (UART, I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on reception on the MAV)"), ("errorsComm", 20, "UInt16", 0, "Communication errors (UART, I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on reception on the MAV)"), ("errorsCount1", 22, "UInt16", 0, "Autopilot-specific errors"), ("errorsCount2", 24, "UInt16", 0, "Autopilot-specific errors"), ("errorsCount3", 26, "UInt16", 0, "Autopilot-specific errors"), ("errorsCount4", 28, "UInt16", 0, "Autopilot-specific errors")]

    public init(data: Data) throws {
		onboardControlSensorsPresent = try data.number(at: 0)
		onboardControlSensorsEnabled = try data.number(at: 4)
		onboardControlSensorsHealth = try data.number(at: 8)
		load = try data.number(at: 12)
		voltageBattery = try data.number(at: 14)
		currentBattery = try data.number(at: 16)
		dropRateComm = try data.number(at: 18)
		errorsComm = try data.number(at: 20)
		errorsCount1 = try data.number(at: 22)
		errorsCount2 = try data.number(at: 24)
		errorsCount3 = try data.number(at: 26)
		errorsCount4 = try data.number(at: 28)
		batteryRemaining = try data.number(at: 30)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 31)
		try payload.set(onboardControlSensorsPresent, at: 0)
		try payload.set(onboardControlSensorsEnabled, at: 4)
		try payload.set(onboardControlSensorsHealth, at: 8)
		try payload.set(load, at: 12)
		try payload.set(voltageBattery, at: 14)
		try payload.set(currentBattery, at: 16)
		try payload.set(dropRateComm, at: 18)
		try payload.set(errorsComm, at: 20)
		try payload.set(errorsCount1, at: 22)
		try payload.set(errorsCount2, at: 24)
		try payload.set(errorsCount3, at: 26)
		try payload.set(errorsCount4, at: 28)
		try payload.set(batteryRemaining, at: 30)
        return payload
    }
}
