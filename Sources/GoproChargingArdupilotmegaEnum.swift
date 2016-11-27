//
//  GoproChargingArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
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
