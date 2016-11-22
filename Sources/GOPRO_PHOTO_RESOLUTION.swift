//
//  GOPRO_PHOTO_RESOLUTION.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproPhotoResolution: Int {

	/// 5MP Medium
	case mav5mpMedium = 0

	/// 7MP Medium
	case mav7mpMedium = 1

	/// 7MP Wide
	case mav7mpWide = 2

	/// 10MP Wide
	case mav10mpWide = 3

	/// 12MP Wide
	case mav12mpWide = 4
}

extension GoproPhotoResolution: Enumeration {
    public static var typeName = "GOPRO_PHOTO_RESOLUTION"
    public static var typeDescription = ""
    public static var allMembers = [mav5mpMedium, mav7mpMedium, mav7mpWide, mav10mpWide, mav12mpWide]
    public static var membersDescriptions = [("GOPRO_PHOTO_RESOLUTION_5MP_MEDIUM", "5MP Medium"), ("GOPRO_PHOTO_RESOLUTION_7MP_MEDIUM", "7MP Medium"), ("GOPRO_PHOTO_RESOLUTION_7MP_WIDE", "7MP Wide"), ("GOPRO_PHOTO_RESOLUTION_10MP_WIDE", "10MP Wide"), ("GOPRO_PHOTO_RESOLUTION_12MP_WIDE", "12MP Wide")]
    public static var enumEnd = UInt(5)
}
