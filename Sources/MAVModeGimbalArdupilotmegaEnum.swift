//
//  MAVModeGimbalArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MAVModeGimbal: Int {

	/// Gimbal is powered on but has not started initializing yet
	case uninitialized = 0

	/// Gimbal is currently running calibration on the pitch axis
	case calibratingPitch = 1

	/// Gimbal is currently running calibration on the roll axis
	case calibratingRoll = 2

	/// Gimbal is currently running calibration on the yaw axis
	case calibratingYaw = 3

	/// Gimbal has finished calibrating and initializing, but is relaxed pending reception of first rate command from copter
	case initialized = 4

	/// Gimbal is actively stabilizing
	case active = 5

	/// Gimbal is relaxed because it missed more than 10 expected rate command messages in a row. Gimbal will move back to active mode when it receives a new rate command
	case rateCmdTimeout = 6
}

extension MAVModeGimbal: Enumeration {
    public static var typeName = "MAV_MODE_GIMBAL"
    public static var typeDescription = ""
    public static var allMembers = [uninitialized, calibratingPitch, calibratingRoll, calibratingYaw, initialized, active, rateCmdTimeout]
    public static var membersDescriptions = [("MAV_MODE_GIMBAL_UNINITIALIZED", "Gimbal is powered on but has not started initializing yet"), ("MAV_MODE_GIMBAL_CALIBRATING_PITCH", "Gimbal is currently running calibration on the pitch axis"), ("MAV_MODE_GIMBAL_CALIBRATING_ROLL", "Gimbal is currently running calibration on the roll axis"), ("MAV_MODE_GIMBAL_CALIBRATING_YAW", "Gimbal is currently running calibration on the yaw axis"), ("MAV_MODE_GIMBAL_INITIALIZED", "Gimbal has finished calibrating and initializing, but is relaxed pending reception of first rate command from copter"), ("MAV_MODE_GIMBAL_ACTIVE", "Gimbal is actively stabilizing"), ("MAV_MODE_GIMBAL_RATE_CMD_TIMEOUT", "Gimbal is relaxed because it missed more than 10 expected rate command messages in a row. Gimbal will move back to active mode when it receives a new rate command")]
    public static var enumEnd = UInt(7)
}
