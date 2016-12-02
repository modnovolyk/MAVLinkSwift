//
//  HilActuatorControlsCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Sent from autopilot to simulation. Hardware in the loop control outputs (replacement for HIL_CONTROLS)
public struct HilActuatorControls {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// Control outputs -1 .. 1. Channel assignment depends on the simulated hardware.
	public let controls: [Float]

	/// System mode (MAV_MODE), includes arming state.
	public let mode: UInt8

	/// Flags as bitfield, reserved for future use.
	public let flags: UInt64
}

extension HilActuatorControls: Message {
    public static let id = UInt8(93)
    public static var typeName = "HIL_ACTUATOR_CONTROLS"
    public static var typeDescription = "Sent from autopilot to simulation. Hardware in the loop control outputs (replacement for HIL_CONTROLS)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("controls", 16, "[Float]", 16, "Control outputs -1 .. 1. Channel assignment depends on the simulated hardware."), ("mode", 80, "UInt8", 0, "System mode (MAV_MODE), includes arming state."), ("flags", 8, "UInt64", 0, "Flags as bitfield, reserved for future use.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		flags = try data.number(at: 8)
		controls = try data.array(at: 16, capacity: 16)
		mode = try data.number(at: 80)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 81)
		try payload.set(timeUsec, at: 0)
		try payload.set(flags, at: 8)
		try payload.set(controls, at: 16, capacity: 16)
		try payload.set(mode, at: 80)
        return payload
    }
}
