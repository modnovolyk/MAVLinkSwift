//
//  MAVDistanceSensorCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration of distance sensor types
public enum MAVDistanceSensor: Int {

	/// Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units
	case laser = 0

	/// Ultrasound rangefinder, e.g. MaxBotix units
	case ultrasound = 1

	/// Infrared rangefinder, e.g. Sharp units
	case infrared = 2
}

extension MAVDistanceSensor: Enumeration {
    public static var typeName = "MAV_DISTANCE_SENSOR"
    public static var typeDescription = "Enumeration of distance sensor types"
    public static var allMembers = [laser, ultrasound, infrared]
    public static var membersDescriptions = [("MAV_DISTANCE_SENSOR_LASER", "Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units"), ("MAV_DISTANCE_SENSOR_ULTRASOUND", "Ultrasound rangefinder, e.g. MaxBotix units"), ("MAV_DISTANCE_SENSOR_INFRARED", "Infrared rangefinder, e.g. Sharp units")]
    public static var enumEnd = UInt(3)
}
