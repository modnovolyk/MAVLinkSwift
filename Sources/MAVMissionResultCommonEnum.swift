//
//  MAVMissionResultCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// result in a mavlink mission ack
public enum MAVMissionResult: UInt8 {

	/// mission accepted OK
	case mavMissionAccepted = 0

	/// generic error / not accepting mission commands at all right now
	case mavMissionError = 1

	/// coordinate frame is not supported
	case mavMissionUnsupportedFrame = 2

	/// command is not supported
	case mavMissionUnsupported = 3

	/// mission item exceeds storage space
	case mavMissionNoSpace = 4

	/// one of the parameters has an invalid value
	case mavMissionInvalid = 5

	/// param1 has an invalid value
	case mavMissionInvalidParam1 = 6

	/// param2 has an invalid value
	case mavMissionInvalidParam2 = 7

	/// param3 has an invalid value
	case mavMissionInvalidParam3 = 8

	/// param4 has an invalid value
	case mavMissionInvalidParam4 = 9

	/// x/param5 has an invalid value
	case mavMissionInvalidParam5X = 10

	/// y/param6 has an invalid value
	case mavMissionInvalidParam6Y = 11

	/// param7 has an invalid value
	case mavMissionInvalidParam7 = 12

	/// received waypoint out of sequence
	case mavMissionInvalidSequence = 13

	/// not accepting any mission commands from this communication partner
	case mavMissionDenied = 14
}

extension MAVMissionResult: Enumeration {
    public static var typeName = "MAV_MISSION_RESULT"
    public static var typeDescription = "result in a mavlink mission ack"
    public static var allMembers = [mavMissionAccepted, mavMissionError, mavMissionUnsupportedFrame, mavMissionUnsupported, mavMissionNoSpace, mavMissionInvalid, mavMissionInvalidParam1, mavMissionInvalidParam2, mavMissionInvalidParam3, mavMissionInvalidParam4, mavMissionInvalidParam5X, mavMissionInvalidParam6Y, mavMissionInvalidParam7, mavMissionInvalidSequence, mavMissionDenied]
    public static var membersDescriptions = [("MAV_MISSION_ACCEPTED", "mission accepted OK"), ("MAV_MISSION_ERROR", "generic error / not accepting mission commands at all right now"), ("MAV_MISSION_UNSUPPORTED_FRAME", "coordinate frame is not supported"), ("MAV_MISSION_UNSUPPORTED", "command is not supported"), ("MAV_MISSION_NO_SPACE", "mission item exceeds storage space"), ("MAV_MISSION_INVALID", "one of the parameters has an invalid value"), ("MAV_MISSION_INVALID_PARAM1", "param1 has an invalid value"), ("MAV_MISSION_INVALID_PARAM2", "param2 has an invalid value"), ("MAV_MISSION_INVALID_PARAM3", "param3 has an invalid value"), ("MAV_MISSION_INVALID_PARAM4", "param4 has an invalid value"), ("MAV_MISSION_INVALID_PARAM5_X", "x/param5 has an invalid value"), ("MAV_MISSION_INVALID_PARAM6_Y", "y/param6 has an invalid value"), ("MAV_MISSION_INVALID_PARAM7", "param7 has an invalid value"), ("MAV_MISSION_INVALID_SEQUENCE", "received waypoint out of sequence"), ("MAV_MISSION_DENIED", "not accepting any mission commands from this communication partner")]
    public static var enumEnd = UInt(15)
}
