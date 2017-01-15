//
//  GoproFieldOfViewArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproFieldOfView: Int {

	/// 0x00: Wide
	case wide = 0

	/// 0x01: Medium
	case medium = 1

	/// 0x02: Narrow
	case narrow = 2
}

extension GoproFieldOfView: Enumeration {
    public static var typeName = "GOPRO_FIELD_OF_VIEW"
    public static var typeDescription = ""
    public static var allMembers = [wide, medium, narrow]
    public static var membersDescriptions = [("GOPRO_FIELD_OF_VIEW_WIDE", "0x00: Wide"), ("GOPRO_FIELD_OF_VIEW_MEDIUM", "0x01: Medium"), ("GOPRO_FIELD_OF_VIEW_NARROW", "0x02: Narrow")]
    public static var enumEnd = UInt(3)
}
