//
//  MAVResultCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// result from a mavlink command
public enum MAVResult: Int {

	/// Command ACCEPTED and EXECUTED
	case accepted = 0

	/// Command TEMPORARY REJECTED/DENIED
	case temporarilyRejected = 1

	/// Command PERMANENTLY DENIED
	case denied = 2

	/// Command UNKNOWN/UNSUPPORTED
	case unsupported = 3

	/// Command executed, but failed
	case failed = 4
}

extension MAVResult: Enumeration {
    public static var typeName = "MAV_RESULT"
    public static var typeDescription = "result from a mavlink command"
    public static var allMembers = [accepted, temporarilyRejected, denied, unsupported, failed]
    public static var membersDescriptions = [("MAV_RESULT_ACCEPTED", "Command ACCEPTED and EXECUTED"), ("MAV_RESULT_TEMPORARILY_REJECTED", "Command TEMPORARY REJECTED/DENIED"), ("MAV_RESULT_DENIED", "Command PERMANENTLY DENIED"), ("MAV_RESULT_UNSUPPORTED", "Command UNKNOWN/UNSUPPORTED"), ("MAV_RESULT_FAILED", "Command executed, but failed")]
    public static var enumEnd = UInt(5)
}
