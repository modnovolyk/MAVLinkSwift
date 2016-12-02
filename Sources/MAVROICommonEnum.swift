//
//  MAVROICommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// The ROI (region of interest) for the vehicle. This can be be used by the vehicle for camera/vehicle attitude alignment (see MAV_CMD_NAV_ROI).
public enum MAVROI: Int {

	/// No region of interest.
	case none = 0

	/// Point toward next MISSION.
	case wpnext = 1

	/// Point toward given MISSION.
	case wpindex = 2

	/// Point toward fixed location.
	case location = 3

	/// Point toward of given id.
	case target = 4
}

extension MAVROI: Enumeration {
    public static var typeName = "MAV_ROI"
    public static var typeDescription = "The ROI (region of interest) for the vehicle. This can be be used by the vehicle for camera/vehicle attitude alignment (see MAV_CMD_NAV_ROI)."
    public static var allMembers = [none, wpnext, wpindex, location, target]
    public static var membersDescriptions = [("MAV_ROI_NONE", "No region of interest."), ("MAV_ROI_WPNEXT", "Point toward next MISSION."), ("MAV_ROI_WPINDEX", "Point toward given MISSION."), ("MAV_ROI_LOCATION", "Point toward fixed location."), ("MAV_ROI_TARGET", "Point toward of given id.")]
    public static var enumEnd = UInt(5)
}
