//
//  LIMITS_STATE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum LimitsState: UInt8 {

	/// pre-initialization
	case limitsInit = 0

	/// disabled
	case limitsDisabled = 1

	/// checking limits
	case limitsEnabled = 2

	/// a limit has been breached
	case limitsTriggered = 3

	/// taking action eg. RTL
	case limitsRecovering = 4

	/// we're no longer in breach of a limit
	case limitsRecovered = 5
}

extension LimitsState: Enumeration {
    public static var typeName = "LIMITS_STATE"
    public static var typeDescription = ""
    public static var allMembers = [limitsInit, limitsDisabled, limitsEnabled, limitsTriggered, limitsRecovering, limitsRecovered]
    public static var membersDescriptions = [("LIMITS_INIT", "pre-initialization"), ("LIMITS_DISABLED", "disabled"), ("LIMITS_ENABLED", "checking limits"), ("LIMITS_TRIGGERED", "a limit has been breached"), ("LIMITS_RECOVERING", "taking action eg. RTL"), ("LIMITS_RECOVERED", "we're no longer in breach of a limit")]
    public static var enumEnd = UInt(6)
}
