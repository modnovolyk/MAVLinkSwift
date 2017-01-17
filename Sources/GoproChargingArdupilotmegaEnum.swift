//
//  GoproChargingArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproCharging: Int {

	/// Charging disabled
	case disabled = 0

	/// Charging enabled
	case enabled = 1
}

extension GoproCharging: Enumeration {
    public static var typeName = "GOPRO_CHARGING"
    public static var typeDescription = ""
    public static var allMembers = [disabled, enabled]
    public static var membersDescriptions = [("GOPRO_CHARGING_DISABLED", "Charging disabled"), ("GOPRO_CHARGING_ENABLED", "Charging enabled")]
    public static var enumEnd = UInt(2)
}
