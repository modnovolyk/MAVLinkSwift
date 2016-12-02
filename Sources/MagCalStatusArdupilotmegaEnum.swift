//
//  MagCalStatusArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum MagCalStatus: Int {
	case magCalNotStarted = 0
	case magCalWaitingToStart = 1
	case magCalRunningStepOne = 2
	case magCalRunningStepTwo = 3
	case magCalSuccess = 4
	case magCalFailed = 5
}

extension MagCalStatus: Enumeration {
    public static var typeName = "MAG_CAL_STATUS"
    public static var typeDescription = ""
    public static var allMembers = [magCalNotStarted, magCalWaitingToStart, magCalRunningStepOne, magCalRunningStepTwo, magCalSuccess, magCalFailed]
    public static var membersDescriptions = [("MAG_CAL_NOT_STARTED", ""), ("MAG_CAL_WAITING_TO_START", ""), ("MAG_CAL_RUNNING_STEP_ONE", ""), ("MAG_CAL_RUNNING_STEP_TWO", ""), ("MAG_CAL_SUCCESS", ""), ("MAG_CAL_FAILED", "")]
    public static var enumEnd = UInt(6)
}
