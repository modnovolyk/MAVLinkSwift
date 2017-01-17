//
//  MAVCollisionThreatLevelCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Aircraft-rated danger from this threat.
public enum MAVCollisionThreatLevel: UInt8 {

	/// Not a threat
	case none = 0

	/// Craft is mildly concerned about this threat
	case low = 1

	/// Craft is panicing, and may take actions to avoid threat
	case high = 2
}

extension MAVCollisionThreatLevel: Enumeration {
    public static var typeName = "MAV_COLLISION_THREAT_LEVEL"
    public static var typeDescription = "Aircraft-rated danger from this threat."
    public static var allMembers = [none, low, high]
    public static var membersDescriptions = [("MAV_COLLISION_THREAT_LEVEL_NONE", "Not a threat"), ("MAV_COLLISION_THREAT_LEVEL_LOW", "Craft is mildly concerned about this threat"), ("MAV_COLLISION_THREAT_LEVEL_HIGH", "Craft is panicing, and may take actions to avoid threat")]
    public static var enumEnd = UInt(3)
}
