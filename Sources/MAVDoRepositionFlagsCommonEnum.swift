//
//  MAVDoRepositionFlagsCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Bitmask of options for the MAV_CMD_DO_REPOSITION
public enum MAVDoRepositionFlags: Int {

	/// The aircraft should immediately transition into guided. This should not be set for follow me applications
	case changeMode = 1
}

extension MAVDoRepositionFlags: Enumeration {
    public static var typeName = "MAV_DO_REPOSITION_FLAGS"
    public static var typeDescription = "Bitmask of options for the MAV_CMD_DO_REPOSITION"
    public static var allMembers = [changeMode]
    public static var membersDescriptions = [("MAV_DO_REPOSITION_FLAGS_CHANGE_MODE", "The aircraft should immediately transition into guided. This should not be set for follow me applications")]
    public static var enumEnd = UInt(2)
}
