//
//  GoproProtuneColourArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproProtuneColour: Int {

	/// Auto
	case standard = 0

	/// Neutral
	case neutral = 1
}

extension GoproProtuneColour: Enumeration {
    public static var typeName = "GOPRO_PROTUNE_COLOUR"
    public static var typeDescription = ""
    public static var allMembers = [standard, neutral]
    public static var membersDescriptions = [("GOPRO_PROTUNE_COLOUR_STANDARD", "Auto"), ("GOPRO_PROTUNE_COLOUR_NEUTRAL", "Neutral")]
    public static var enumEnd = UInt(2)
}
