//
//  PidTuningAxisArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum PidTuningAxis: UInt8 {
	case pidTuningRoll = 1
	case pidTuningPitch = 2
	case pidTuningYaw = 3
	case pidTuningAccz = 4
	case pidTuningSteer = 5
}

extension PidTuningAxis: Enumeration {
    public static var typeName = "PID_TUNING_AXIS"
    public static var typeDescription = ""
    public static var allMembers = [pidTuningRoll, pidTuningPitch, pidTuningYaw, pidTuningAccz, pidTuningSteer]
    public static var membersDescriptions = [("PID_TUNING_ROLL", ""), ("PID_TUNING_PITCH", ""), ("PID_TUNING_YAW", ""), ("PID_TUNING_ACCZ", ""), ("PID_TUNING_STEER", "")]
    public static var enumEnd = UInt(6)
}
