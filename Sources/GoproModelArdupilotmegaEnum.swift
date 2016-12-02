//
//  GoproModelArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproModel: Int {

	/// Unknown gopro model
	case unknown = 0

	/// Hero 3+ Silver (HeroBus not supported by GoPro)
	case hero3PlusSilver = 1

	/// Hero 3+ Black
	case hero3PlusBlack = 2

	/// Hero 4 Silver
	case hero4Silver = 3

	/// Hero 4 Black
	case hero4Black = 4
}

extension GoproModel: Enumeration {
    public static var typeName = "GOPRO_MODEL"
    public static var typeDescription = ""
    public static var allMembers = [unknown, hero3PlusSilver, hero3PlusBlack, hero4Silver, hero4Black]
    public static var membersDescriptions = [("GOPRO_MODEL_UNKNOWN", "Unknown gopro model"), ("GOPRO_MODEL_HERO_3_PLUS_SILVER", "Hero 3+ Silver (HeroBus not supported by GoPro)"), ("GOPRO_MODEL_HERO_3_PLUS_BLACK", "Hero 3+ Black"), ("GOPRO_MODEL_HERO_4_SILVER", "Hero 4 Silver"), ("GOPRO_MODEL_HERO_4_BLACK", "Hero 4 Black")]
    public static var enumEnd = UInt(5)
}
