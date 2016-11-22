//
//  MAV_POWER_STATUS.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Power supply status flags (bitmask)
public enum MAVPowerStatus: Int {

	/// main brick power supply valid
	case brickValid = 1

	/// main servo power supply valid for FMU
	case servoValid = 2

	/// USB power is connected
	case usbConnected = 4

	/// peripheral supply is in over-current state
	case periphOvercurrent = 8

	/// hi-power peripheral supply is in over-current state
	case periphHipowerOvercurrent = 16

	/// Power status has changed since boot
	case changed = 32
}

extension MAVPowerStatus: Enumeration {
    public static var typeName = "MAV_POWER_STATUS"
    public static var typeDescription = "Power supply status flags (bitmask)"
    public static var allMembers = [brickValid, servoValid, usbConnected, periphOvercurrent, periphHipowerOvercurrent, changed]
    public static var membersDescriptions = [("MAV_POWER_STATUS_BRICK_VALID", "main brick power supply valid"), ("MAV_POWER_STATUS_SERVO_VALID", "main servo power supply valid for FMU"), ("MAV_POWER_STATUS_USB_CONNECTED", "USB power is connected"), ("MAV_POWER_STATUS_PERIPH_OVERCURRENT", "peripheral supply is in over-current state"), ("MAV_POWER_STATUS_PERIPH_HIPOWER_OVERCURRENT", "hi-power peripheral supply is in over-current state"), ("MAV_POWER_STATUS_CHANGED", "Power status has changed since boot")]
    public static var enumEnd = UInt(33)
}
