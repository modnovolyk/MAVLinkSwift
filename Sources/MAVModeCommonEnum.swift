//
//  MAVModeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// These defines are predefined OR-combined mode flags. There is no need to use values from this enum, but it simplifies the use of the mode flags. Note that manual input is enabled in all modes as a safety override.
public enum MAVMode: UInt8 {

	/// System is not ready to fly, booting, calibrating, etc. No flag is set.
	case preflight = 0

	/// System is allowed to be active, under manual (RC) control, no stabilization
	case manualDisarmed = 64

	/// UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only.
	case testDisarmed = 66

	/// System is allowed to be active, under assisted RC control.
	case stabilizeDisarmed = 80

	/// System is allowed to be active, under autonomous control, manual setpoint
	case guidedDisarmed = 88

	/// System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by MISSIONs)
	case autoDisarmed = 92

	/// System is allowed to be active, under manual (RC) control, no stabilization
	case manualArmed = 192

	/// UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only.
	case testArmed = 194

	/// System is allowed to be active, under assisted RC control.
	case stabilizeArmed = 208

	/// System is allowed to be active, under autonomous control, manual setpoint
	case guidedArmed = 216

	/// System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by MISSIONs)
	case autoArmed = 220
}

extension MAVMode: Enumeration {
    public static var typeName = "MAV_MODE"
    public static var typeDescription = "These defines are predefined OR-combined mode flags. There is no need to use values from this enum, but it simplifies the use of the mode flags. Note that manual input is enabled in all modes as a safety override."
    public static var allMembers = [preflight, manualDisarmed, testDisarmed, stabilizeDisarmed, guidedDisarmed, autoDisarmed, manualArmed, testArmed, stabilizeArmed, guidedArmed, autoArmed]
    public static var membersDescriptions = [("MAV_MODE_PREFLIGHT", "System is not ready to fly, booting, calibrating, etc. No flag is set."), ("MAV_MODE_MANUAL_DISARMED", "System is allowed to be active, under manual (RC) control, no stabilization"), ("MAV_MODE_TEST_DISARMED", "UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only."), ("MAV_MODE_STABILIZE_DISARMED", "System is allowed to be active, under assisted RC control."), ("MAV_MODE_GUIDED_DISARMED", "System is allowed to be active, under autonomous control, manual setpoint"), ("MAV_MODE_AUTO_DISARMED", "System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by MISSIONs)"), ("MAV_MODE_MANUAL_ARMED", "System is allowed to be active, under manual (RC) control, no stabilization"), ("MAV_MODE_TEST_ARMED", "UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only."), ("MAV_MODE_STABILIZE_ARMED", "System is allowed to be active, under assisted RC control."), ("MAV_MODE_GUIDED_ARMED", "System is allowed to be active, under autonomous control, manual setpoint"), ("MAV_MODE_AUTO_ARMED", "System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by MISSIONs)")]
    public static var enumEnd = UInt(221)
}
