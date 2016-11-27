//
//  GoproProtuneGainArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproProtuneGain: Int {

	/// ISO 400
	case mav400 = 0

	/// ISO 800 (Only Hero 4)
	case mav800 = 1

	/// ISO 1600
	case mav1600 = 2

	/// ISO 3200 (Only Hero 4)
	case mav3200 = 3

	/// ISO 6400
	case mav6400 = 4
}

extension GoproProtuneGain: Enumeration {
    public static var typeName = "GOPRO_PROTUNE_GAIN"
    public static var typeDescription = ""
    public static var allMembers = [mav400, mav800, mav1600, mav3200, mav6400]
    public static var membersDescriptions = [("GOPRO_PROTUNE_GAIN_400", "ISO 400"), ("GOPRO_PROTUNE_GAIN_800", "ISO 800 (Only Hero 4)"), ("GOPRO_PROTUNE_GAIN_1600", "ISO 1600"), ("GOPRO_PROTUNE_GAIN_3200", "ISO 3200 (Only Hero 4)"), ("GOPRO_PROTUNE_GAIN_6400", "ISO 6400")]
    public static var enumEnd = UInt(5)
}
