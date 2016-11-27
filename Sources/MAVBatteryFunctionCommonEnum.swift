//
//  MAVBatteryFunctionCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Enumeration of battery functions
public enum MAVBatteryFunction: UInt8 {

	/// Battery function is unknown
	case unknown = 0

	/// Battery supports all flight systems
	case all = 1

	/// Battery for the propulsion system
	case propulsion = 2

	/// Avionics battery
	case avionics = 3

	/// Payload battery
	case mavBatteryTypePayload = 4
}

extension MAVBatteryFunction: Enumeration {
    public static var typeName = "MAV_BATTERY_FUNCTION"
    public static var typeDescription = "Enumeration of battery functions"
    public static var allMembers = [unknown, all, propulsion, avionics, mavBatteryTypePayload]
    public static var membersDescriptions = [("MAV_BATTERY_FUNCTION_UNKNOWN", "Battery function is unknown"), ("MAV_BATTERY_FUNCTION_ALL", "Battery supports all flight systems"), ("MAV_BATTERY_FUNCTION_PROPULSION", "Battery for the propulsion system"), ("MAV_BATTERY_FUNCTION_AVIONICS", "Avionics battery"), ("MAV_BATTERY_TYPE_PAYLOAD", "Payload battery")]
    public static var enumEnd = UInt(5)
}
