//
//  ParachuteActionArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum ParachuteAction: Int {

	/// Disable parachute release
	case parachuteDisable = 0

	/// Enable parachute release
	case parachuteEnable = 1

	/// Release parachute
	case parachuteRelease = 2
}

extension ParachuteAction: Enumeration {
    public static var typeName = "PARACHUTE_ACTION"
    public static var typeDescription = ""
    public static var allMembers = [parachuteDisable, parachuteEnable, parachuteRelease]
    public static var membersDescriptions = [("PARACHUTE_DISABLE", "Disable parachute release"), ("PARACHUTE_ENABLE", "Enable parachute release"), ("PARACHUTE_RELEASE", "Release parachute")]
    public static var enumEnd = UInt(3)
}
