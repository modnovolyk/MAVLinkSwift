//
//  GoproVideoSettingsFlagsArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproVideoSettingsFlags: Int {

	/// 0=NTSC, 1=PAL
	case goproVideoSettingsTvMode = 1
}

extension GoproVideoSettingsFlags: Enumeration {
    public static var typeName = "GOPRO_VIDEO_SETTINGS_FLAGS"
    public static var typeDescription = ""
    public static var allMembers = [goproVideoSettingsTvMode]
    public static var membersDescriptions = [("GOPRO_VIDEO_SETTINGS_TV_MODE", "0=NTSC, 1=PAL")]
    public static var enumEnd = UInt(2)
}
