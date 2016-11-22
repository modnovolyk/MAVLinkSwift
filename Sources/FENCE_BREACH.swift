//
//  FENCE_BREACH.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum FenceBreach: UInt8 {

	/// No last fence breach
	case none = 0

	/// Breached minimum altitude
	case minalt = 1

	/// Breached maximum altitude
	case maxalt = 2

	/// Breached fence boundary
	case boundary = 3
}

extension FenceBreach: Enumeration {
    public static var typeName = "FENCE_BREACH"
    public static var typeDescription = ""
    public static var allMembers = [none, minalt, maxalt, boundary]
    public static var membersDescriptions = [("FENCE_BREACH_NONE", "No last fence breach"), ("FENCE_BREACH_MINALT", "Breached minimum altitude"), ("FENCE_BREACH_MAXALT", "Breached maximum altitude"), ("FENCE_BREACH_BOUNDARY", "Breached fence boundary")]
    public static var enumEnd = UInt(4)
}
