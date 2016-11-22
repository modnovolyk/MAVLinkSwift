//
//  GIMBAL_AXIS_CALIBRATION_REQUIRED.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GimbalAxisCalibrationRequired: Int {

	/// Whether or not this axis requires calibration is unknown at this time
	case unknown = 0

	/// This axis requires calibration
	case mavTrue = 1

	/// This axis does not require calibration
	case mavFalse = 2
}

extension GimbalAxisCalibrationRequired: Enumeration {
    public static var typeName = "GIMBAL_AXIS_CALIBRATION_REQUIRED"
    public static var typeDescription = ""
    public static var allMembers = [unknown, mavTrue, mavFalse]
    public static var membersDescriptions = [("GIMBAL_AXIS_CALIBRATION_REQUIRED_UNKNOWN", "Whether or not this axis requires calibration is unknown at this time"), ("GIMBAL_AXIS_CALIBRATION_REQUIRED_TRUE", "This axis requires calibration"), ("GIMBAL_AXIS_CALIBRATION_REQUIRED_FALSE", "This axis does not require calibration")]
    public static var enumEnd = UInt(3)
}
