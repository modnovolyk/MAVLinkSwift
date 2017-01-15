//
//  FenceActionCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum FenceAction: Int {

	/// Disable fenced mode
	case none = 0

	/// Switched to guided mode to return point (fence point 0)
	case guided = 1

	/// Report fence breach, but don't take action
	case report = 2

	/// Switched to guided mode to return point (fence point 0) with manual throttle control
	case guidedThrPass = 3

	/// Switch to RTL (return to launch) mode and head for the return point.
	case rtl = 4
}

extension FenceAction: Enumeration {
    public static var typeName = "FENCE_ACTION"
    public static var typeDescription = ""
    public static var allMembers = [none, guided, report, guidedThrPass, rtl]
    public static var membersDescriptions = [("FENCE_ACTION_NONE", "Disable fenced mode"), ("FENCE_ACTION_GUIDED", "Switched to guided mode to return point (fence point 0)"), ("FENCE_ACTION_REPORT", "Report fence breach, but don't take action"), ("FENCE_ACTION_GUIDED_THR_PASS", "Switched to guided mode to return point (fence point 0) with manual throttle control"), ("FENCE_ACTION_RTL", "Switch to RTL (return to launch) mode and head for the return point.")]
    public static var enumEnd = UInt(5)
}
