//
//  RALLY_FLAGS.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Flags in RALLY_POINT message
public enum RallyFlags: Int {

	/// Flag set when requiring favorable winds for landing.
	case favorableWind = 1

	/// Flag set when plane is to immediately descend to break altitude and land without GCS intervention. Flag not set when plane is to loiter at Rally point until commanded to land.
	case landImmediately = 2
}

extension RallyFlags: Enumeration {
    public static var typeName = "RALLY_FLAGS"
    public static var typeDescription = "Flags in RALLY_POINT message"
    public static var allMembers = [favorableWind, landImmediately]
    public static var membersDescriptions = [("FAVORABLE_WIND", "Flag set when requiring favorable winds for landing."), ("LAND_IMMEDIATELY", "Flag set when plane is to immediately descend to break altitude and land without GCS intervention. Flag not set when plane is to loiter at Rally point until commanded to land.")]
    public static var enumEnd = UInt(3)
}
