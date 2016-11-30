//
//  GoproResolutionArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproResolution: Int {

	/// 848 x 480 (480p)
	case mav480p = 0

	/// 1280 x 720 (720p)
	case mav720p = 1

	/// 1280 x 960 (960p)
	case mav960p = 2

	/// 1920 x 1080 (1080p)
	case mav1080p = 3

	/// 1920 x 1440 (1440p)
	case mav1440p = 4

	/// 2704 x 1440 (2.7k-17:9)
	case mav27k179 = 5

	/// 2704 x 1524 (2.7k-16:9)
	case mav27k169 = 6

	/// 2704 x 2028 (2.7k-4:3)
	case mav27k43 = 7

	/// 3840 x 2160 (4k-16:9)
	case mav4k169 = 8

	/// 4096 x 2160 (4k-17:9)
	case mav4k179 = 9

	/// 1280 x 720 (720p-SuperView)
	case mav720pSuperview = 10

	/// 1920 x 1080 (1080p-SuperView)
	case mav1080pSuperview = 11

	/// 2704 x 1520 (2.7k-SuperView)
	case mav27kSuperview = 12

	/// 3840 x 2160 (4k-SuperView)
	case mav4kSuperview = 13
}

extension GoproResolution: Enumeration {
    public static var typeName = "GOPRO_RESOLUTION"
    public static var typeDescription = ""
    public static var allMembers = [mav480p, mav720p, mav960p, mav1080p, mav1440p, mav27k179, mav27k169, mav27k43, mav4k169, mav4k179, mav720pSuperview, mav1080pSuperview, mav27kSuperview, mav4kSuperview]
    public static var membersDescriptions = [("GOPRO_RESOLUTION_480p", "848 x 480 (480p)"), ("GOPRO_RESOLUTION_720p", "1280 x 720 (720p)"), ("GOPRO_RESOLUTION_960p", "1280 x 960 (960p)"), ("GOPRO_RESOLUTION_1080p", "1920 x 1080 (1080p)"), ("GOPRO_RESOLUTION_1440p", "1920 x 1440 (1440p)"), ("GOPRO_RESOLUTION_2_7k_17_9", "2704 x 1440 (2.7k-17:9)"), ("GOPRO_RESOLUTION_2_7k_16_9", "2704 x 1524 (2.7k-16:9)"), ("GOPRO_RESOLUTION_2_7k_4_3", "2704 x 2028 (2.7k-4:3)"), ("GOPRO_RESOLUTION_4k_16_9", "3840 x 2160 (4k-16:9)"), ("GOPRO_RESOLUTION_4k_17_9", "4096 x 2160 (4k-17:9)"), ("GOPRO_RESOLUTION_720p_SUPERVIEW", "1280 x 720 (720p-SuperView)"), ("GOPRO_RESOLUTION_1080p_SUPERVIEW", "1920 x 1080 (1080p-SuperView)"), ("GOPRO_RESOLUTION_2_7k_SUPERVIEW", "2704 x 1520 (2.7k-SuperView)"), ("GOPRO_RESOLUTION_4k_SUPERVIEW", "3840 x 2160 (4k-SuperView)")]
    public static var enumEnd = UInt(14)
}
