//
//  GoproVideoSettingsFlagsArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
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
