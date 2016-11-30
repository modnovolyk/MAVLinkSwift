//
//  GimbalAxisArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GimbalAxis: Int {

	/// Gimbal yaw axis
	case yaw = 0

	/// Gimbal pitch axis
	case pitch = 1

	/// Gimbal roll axis
	case roll = 2
}

extension GimbalAxis: Enumeration {
    public static var typeName = "GIMBAL_AXIS"
    public static var typeDescription = ""
    public static var allMembers = [yaw, pitch, roll]
    public static var membersDescriptions = [("GIMBAL_AXIS_YAW", "Gimbal yaw axis"), ("GIMBAL_AXIS_PITCH", "Gimbal pitch axis"), ("GIMBAL_AXIS_ROLL", "Gimbal roll axis")]
    public static var enumEnd = UInt(3)
}
