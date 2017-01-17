//
//  GPSInputIgnoreFlagsCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GPSInputIgnoreFlags: UInt16 {

	/// ignore altitude field
	case gpsInputIgnoreFlagAlt = 1

	/// ignore hdop field
	case gpsInputIgnoreFlagHdop = 2

	/// ignore vdop field
	case gpsInputIgnoreFlagVdop = 4

	/// ignore horizontal velocity field (vn and ve)
	case gpsInputIgnoreFlagVelHoriz = 8

	/// ignore vertical velocity field (vd)
	case gpsInputIgnoreFlagVelVert = 16

	/// ignore speed accuracy field
	case gpsInputIgnoreFlagSpeedAccuracy = 32

	/// ignore horizontal accuracy field
	case gpsInputIgnoreFlagHorizontalAccuracy = 64

	/// ignore vertical accuracy field
	case gpsInputIgnoreFlagVerticalAccuracy = 128
}

extension GPSInputIgnoreFlags: Enumeration {
    public static var typeName = "GPS_INPUT_IGNORE_FLAGS"
    public static var typeDescription = ""
    public static var allMembers = [gpsInputIgnoreFlagAlt, gpsInputIgnoreFlagHdop, gpsInputIgnoreFlagVdop, gpsInputIgnoreFlagVelHoriz, gpsInputIgnoreFlagVelVert, gpsInputIgnoreFlagSpeedAccuracy, gpsInputIgnoreFlagHorizontalAccuracy, gpsInputIgnoreFlagVerticalAccuracy]
    public static var membersDescriptions = [("GPS_INPUT_IGNORE_FLAG_ALT", "ignore altitude field"), ("GPS_INPUT_IGNORE_FLAG_HDOP", "ignore hdop field"), ("GPS_INPUT_IGNORE_FLAG_VDOP", "ignore vdop field"), ("GPS_INPUT_IGNORE_FLAG_VEL_HORIZ", "ignore horizontal velocity field (vn and ve)"), ("GPS_INPUT_IGNORE_FLAG_VEL_VERT", "ignore vertical velocity field (vd)"), ("GPS_INPUT_IGNORE_FLAG_SPEED_ACCURACY", "ignore speed accuracy field"), ("GPS_INPUT_IGNORE_FLAG_HORIZONTAL_ACCURACY", "ignore horizontal accuracy field"), ("GPS_INPUT_IGNORE_FLAG_VERTICAL_ACCURACY", "ignore vertical accuracy field")]
    public static var enumEnd = UInt(129)
}
