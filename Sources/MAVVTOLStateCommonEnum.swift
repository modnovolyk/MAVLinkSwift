//
//  MAVVTOLStateCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration of VTOL states
public enum MAVVTOLState: UInt8 {

	/// MAV is not configured as VTOL
	case undefined = 0

	/// VTOL is in transition from multicopter to fixed-wing
	case transitionToFw = 1

	/// VTOL is in transition from fixed-wing to multicopter
	case transitionToMc = 2

	/// VTOL is in multicopter state
	case mc = 3

	/// VTOL is in fixed-wing state
	case fw = 4
}

extension MAVVTOLState: Enumeration {
    public static var typeName = "MAV_VTOL_STATE"
    public static var typeDescription = "Enumeration of VTOL states"
    public static var allMembers = [undefined, transitionToFw, transitionToMc, mc, fw]
    public static var membersDescriptions = [("MAV_VTOL_STATE_UNDEFINED", "MAV is not configured as VTOL"), ("MAV_VTOL_STATE_TRANSITION_TO_FW", "VTOL is in transition from multicopter to fixed-wing"), ("MAV_VTOL_STATE_TRANSITION_TO_MC", "VTOL is in transition from fixed-wing to multicopter"), ("MAV_VTOL_STATE_MC", "VTOL is in multicopter state"), ("MAV_VTOL_STATE_FW", "VTOL is in fixed-wing state")]
    public static var enumEnd = UInt(5)
}
