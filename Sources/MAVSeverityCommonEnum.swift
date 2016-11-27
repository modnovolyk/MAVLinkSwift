//
//  MAVSeverityCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Indicates the severity level, generally used for status messages to indicate their relative urgency. Based on RFC-5424 using expanded definitions at: http://www.kiwisyslog.com/kb/info:-syslog-message-levels/.
public enum MAVSeverity: UInt8 {

	/// System is unusable. This is a "panic" condition.
	case emergency = 0

	/// Action should be taken immediately. Indicates error in non-critical systems.
	case alert = 1

	/// Action must be taken immediately. Indicates failure in a primary system.
	case critical = 2

	/// Indicates an error in secondary/redundant systems.
	case error = 3

	/// Indicates about a possible future error if this is not resolved within a given timeframe. Example would be a low battery warning.
	case warning = 4

	/// An unusual event has occured, though not an error condition. This should be investigated for the root cause.
	case notice = 5

	/// Normal operational messages. Useful for logging. No action is required for these messages.
	case info = 6

	/// Useful non-operational messages that can assist in debugging. These should not occur during normal operation.
	case debug = 7
}

extension MAVSeverity: Enumeration {
    public static var typeName = "MAV_SEVERITY"
    public static var typeDescription = "Indicates the severity level, generally used for status messages to indicate their relative urgency. Based on RFC-5424 using expanded definitions at: http://www.kiwisyslog.com/kb/info:-syslog-message-levels/."
    public static var allMembers = [emergency, alert, critical, error, warning, notice, info, debug]
    public static var membersDescriptions = [("MAV_SEVERITY_EMERGENCY", "System is unusable. This is a \"panic\" condition."), ("MAV_SEVERITY_ALERT", "Action should be taken immediately. Indicates error in non-critical systems."), ("MAV_SEVERITY_CRITICAL", "Action must be taken immediately. Indicates failure in a primary system."), ("MAV_SEVERITY_ERROR", "Indicates an error in secondary/redundant systems."), ("MAV_SEVERITY_WARNING", "Indicates about a possible future error if this is not resolved within a given timeframe. Example would be a low battery warning."), ("MAV_SEVERITY_NOTICE", "An unusual event has occured, though not an error condition. This should be investigated for the root cause."), ("MAV_SEVERITY_INFO", "Normal operational messages. Useful for logging. No action is required for these messages."), ("MAV_SEVERITY_DEBUG", "Useful non-operational messages that can assist in debugging. These should not occur during normal operation.")]
    public static var enumEnd = UInt(8)
}
