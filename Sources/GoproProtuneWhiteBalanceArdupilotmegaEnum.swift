//
//  GoproProtuneWhiteBalanceArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproProtuneWhiteBalance: Int {

	/// Auto
	case auto = 0

	/// 3000K
	case mav3000k = 1

	/// 5500K
	case mav5500k = 2

	/// 6500K
	case mav6500k = 3

	/// Camera Raw
	case raw = 4
}

extension GoproProtuneWhiteBalance: Enumeration {
    public static var typeName = "GOPRO_PROTUNE_WHITE_BALANCE"
    public static var typeDescription = ""
    public static var allMembers = [auto, mav3000k, mav5500k, mav6500k, raw]
    public static var membersDescriptions = [("GOPRO_PROTUNE_WHITE_BALANCE_AUTO", "Auto"), ("GOPRO_PROTUNE_WHITE_BALANCE_3000K", "3000K"), ("GOPRO_PROTUNE_WHITE_BALANCE_5500K", "5500K"), ("GOPRO_PROTUNE_WHITE_BALANCE_6500K", "6500K"), ("GOPRO_PROTUNE_WHITE_BALANCE_RAW", "Camera Raw")]
    public static var enumEnd = UInt(5)
}
