//
//  GimbalAxisCalibrationStatusArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GimbalAxisCalibrationStatus: Int {

	/// Axis calibration is in progress
	case inProgress = 0

	/// Axis calibration succeeded
	case succeeded = 1

	/// Axis calibration failed
	case failed = 2
}

extension GimbalAxisCalibrationStatus: Enumeration {
    public static var typeName = "GIMBAL_AXIS_CALIBRATION_STATUS"
    public static var typeDescription = ""
    public static var allMembers = [inProgress, succeeded, failed]
    public static var membersDescriptions = [("GIMBAL_AXIS_CALIBRATION_STATUS_IN_PROGRESS", "Axis calibration is in progress"), ("GIMBAL_AXIS_CALIBRATION_STATUS_SUCCEEDED", "Axis calibration succeeded"), ("GIMBAL_AXIS_CALIBRATION_STATUS_FAILED", "Axis calibration failed")]
    public static var enumEnd = UInt(3)
}
