//
//  GoproFrameRateArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproFrameRate: Int {

	/// 12 FPS
	case mav12 = 0

	/// 15 FPS
	case mav15 = 1

	/// 24 FPS
	case mav24 = 2

	/// 25 FPS
	case mav25 = 3

	/// 30 FPS
	case mav30 = 4

	/// 48 FPS
	case mav48 = 5

	/// 50 FPS
	case mav50 = 6

	/// 60 FPS
	case mav60 = 7

	/// 80 FPS
	case mav80 = 8

	/// 90 FPS
	case mav90 = 9

	/// 100 FPS
	case mav100 = 10

	/// 120 FPS
	case mav120 = 11

	/// 240 FPS
	case mav240 = 12

	/// 12.5 FPS
	case mav125 = 13
}

extension GoproFrameRate: Enumeration {
    public static var typeName = "GOPRO_FRAME_RATE"
    public static var typeDescription = ""
    public static var allMembers = [mav12, mav15, mav24, mav25, mav30, mav48, mav50, mav60, mav80, mav90, mav100, mav120, mav240, mav125]
    public static var membersDescriptions = [("GOPRO_FRAME_RATE_12", "12 FPS"), ("GOPRO_FRAME_RATE_15", "15 FPS"), ("GOPRO_FRAME_RATE_24", "24 FPS"), ("GOPRO_FRAME_RATE_25", "25 FPS"), ("GOPRO_FRAME_RATE_30", "30 FPS"), ("GOPRO_FRAME_RATE_48", "48 FPS"), ("GOPRO_FRAME_RATE_50", "50 FPS"), ("GOPRO_FRAME_RATE_60", "60 FPS"), ("GOPRO_FRAME_RATE_80", "80 FPS"), ("GOPRO_FRAME_RATE_90", "90 FPS"), ("GOPRO_FRAME_RATE_100", "100 FPS"), ("GOPRO_FRAME_RATE_120", "120 FPS"), ("GOPRO_FRAME_RATE_240", "240 FPS"), ("GOPRO_FRAME_RATE_12_5", "12.5 FPS")]
    public static var enumEnd = UInt(14)
}
