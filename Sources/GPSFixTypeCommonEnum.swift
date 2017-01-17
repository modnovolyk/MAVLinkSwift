//
//  GPSFixTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Type of GPS fix
public enum GPSFixType: UInt8 {

	/// No GPS connected
	case noGps = 0

	/// No position information, GPS is connected
	case noFix = 1

	/// 2D position
	case mav2dFix = 2

	/// 3D position
	case mav3dFix = 3

	/// DGPS/SBAS aided 3D position
	case dgps = 4

	/// RTK float, 3D position
	case rtkFloat = 5

	/// RTK Fixed, 3D position
	case rtkFixed = 6

	/// Static fixed, typically used for base stations
	case mavStatic = 7
}

extension GPSFixType: Enumeration {
    public static var typeName = "GPS_FIX_TYPE"
    public static var typeDescription = "Type of GPS fix"
    public static var allMembers = [noGps, noFix, mav2dFix, mav3dFix, dgps, rtkFloat, rtkFixed, mavStatic]
    public static var membersDescriptions = [("GPS_FIX_TYPE_NO_GPS", "No GPS connected"), ("GPS_FIX_TYPE_NO_FIX", "No position information, GPS is connected"), ("GPS_FIX_TYPE_2D_FIX", "2D position"), ("GPS_FIX_TYPE_3D_FIX", "3D position"), ("GPS_FIX_TYPE_DGPS", "DGPS/SBAS aided 3D position"), ("GPS_FIX_TYPE_RTK_FLOAT", "RTK float, 3D position"), ("GPS_FIX_TYPE_RTK_FIXED", "RTK Fixed, 3D position"), ("GPS_FIX_TYPE_STATIC", "Static fixed, typically used for base stations")]
    public static var enumEnd = UInt(8)
}
