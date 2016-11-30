//
//  MAVCollisionActionCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Possible actions an aircraft can take to avoid a collision.
public enum MAVCollisionAction: UInt8 {

	/// Ignore any potential collisions
	case none = 0

	/// Report potential collision
	case report = 1

	/// Ascend or Descend to avoid thread
	case ascendOrDescend = 2

	/// Ascend or Descend to avoid thread
	case moveHorizontally = 3

	/// Aircraft to move perpendicular to the collision's velocity vector
	case movePerpendicular = 4

	/// Aircraft to fly directly back to its launch point
	case rtl = 5

	/// Aircraft to stop in place
	case hover = 6
}

extension MAVCollisionAction: Enumeration {
    public static var typeName = "MAV_COLLISION_ACTION"
    public static var typeDescription = "Possible actions an aircraft can take to avoid a collision."
    public static var allMembers = [none, report, ascendOrDescend, moveHorizontally, movePerpendicular, rtl, hover]
    public static var membersDescriptions = [("MAV_COLLISION_ACTION_NONE", "Ignore any potential collisions"), ("MAV_COLLISION_ACTION_REPORT", "Report potential collision"), ("MAV_COLLISION_ACTION_ASCEND_OR_DESCEND", "Ascend or Descend to avoid thread"), ("MAV_COLLISION_ACTION_MOVE_HORIZONTALLY", "Ascend or Descend to avoid thread"), ("MAV_COLLISION_ACTION_MOVE_PERPENDICULAR", "Aircraft to move perpendicular to the collision's velocity vector"), ("MAV_COLLISION_ACTION_RTL", "Aircraft to fly directly back to its launch point"), ("MAV_COLLISION_ACTION_HOVER", "Aircraft to stop in place")]
    public static var enumEnd = UInt(7)
}
