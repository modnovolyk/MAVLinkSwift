//
//  LimitModuleArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum LimitModule: Int {

	/// pre-initialization
	case limitGpslock = 1

	/// disabled
	case limitGeofence = 2

	/// checking limits
	case limitAltitude = 4
}

extension LimitModule: Enumeration {
    public static var typeName = "LIMIT_MODULE"
    public static var typeDescription = ""
    public static var allMembers = [limitGpslock, limitGeofence, limitAltitude]
    public static var membersDescriptions = [("LIMIT_GPSLOCK", "pre-initialization"), ("LIMIT_GEOFENCE", "disabled"), ("LIMIT_ALTITUDE", "checking limits")]
    public static var enumEnd = UInt(5)
}
