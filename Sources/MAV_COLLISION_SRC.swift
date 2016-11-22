//
//  MAV_COLLISION_SRC.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Source of information about this collision.
public enum MAVCollisionSrc: UInt8 {

	/// ID field references ADSB_VEHICLE packets
	case adsb = 0

	/// ID field references MAVLink SRC ID
	case mavlinkGpsGlobalInt = 1
}

extension MAVCollisionSrc: Enumeration {
    public static var typeName = "MAV_COLLISION_SRC"
    public static var typeDescription = "Source of information about this collision."
    public static var allMembers = [adsb, mavlinkGpsGlobalInt]
    public static var membersDescriptions = [("MAV_COLLISION_SRC_ADSB", "ID field references ADSB_VEHICLE packets"), ("MAV_COLLISION_SRC_MAVLINK_GPS_GLOBAL_INT", "ID field references MAVLink SRC ID")]
    public static var enumEnd = UInt(2)
}
