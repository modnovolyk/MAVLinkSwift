//
//  MAVLandedStateCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Enumeration of landed detector states
public enum MAVLandedState: UInt8 {

	/// MAV landed state is unknown
	case undefined = 0

	/// MAV is landed (on ground)
	case onGround = 1

	/// MAV is in air
	case inAir = 2
}

extension MAVLandedState: Enumeration {
    public static var typeName = "MAV_LANDED_STATE"
    public static var typeDescription = "Enumeration of landed detector states"
    public static var allMembers = [undefined, onGround, inAir]
    public static var membersDescriptions = [("MAV_LANDED_STATE_UNDEFINED", "MAV landed state is unknown"), ("MAV_LANDED_STATE_ON_GROUND", "MAV is landed (on ground)"), ("MAV_LANDED_STATE_IN_AIR", "MAV is in air")]
    public static var enumEnd = UInt(3)
}
