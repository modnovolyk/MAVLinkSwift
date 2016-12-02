//
//  MAVBatteryTypeCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Enumeration of battery types
public enum MAVBatteryType: UInt8 {

	/// Not specified.
	case unknown = 0

	/// Lithium polymer battery
	case lipo = 1

	/// Lithium-iron-phosphate battery
	case life = 2

	/// Lithium-ION battery
	case lion = 3

	/// Nickel metal hydride battery
	case nimh = 4
}

extension MAVBatteryType: Enumeration {
    public static var typeName = "MAV_BATTERY_TYPE"
    public static var typeDescription = "Enumeration of battery types"
    public static var allMembers = [unknown, lipo, life, lion, nimh]
    public static var membersDescriptions = [("MAV_BATTERY_TYPE_UNKNOWN", "Not specified."), ("MAV_BATTERY_TYPE_LIPO", "Lithium polymer battery"), ("MAV_BATTERY_TYPE_LIFE", "Lithium-iron-phosphate battery"), ("MAV_BATTERY_TYPE_LION", "Lithium-ION battery"), ("MAV_BATTERY_TYPE_NIMH", "Nickel metal hydride battery")]
    public static var enumEnd = UInt(5)
}
