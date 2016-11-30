//
//  GoproBurstRateArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproBurstRate: Int {

	/// 3 Shots / 1 Second
	case mav3In1Second = 0

	/// 5 Shots / 1 Second
	case mav5In1Second = 1

	/// 10 Shots / 1 Second
	case mav10In1Second = 2

	/// 10 Shots / 2 Second
	case mav10In2Second = 3

	/// 10 Shots / 3 Second (Hero 4 Only)
	case mav10In3Second = 4

	/// 30 Shots / 1 Second
	case mav30In1Second = 5

	/// 30 Shots / 2 Second
	case mav30In2Second = 6

	/// 30 Shots / 3 Second
	case mav30In3Second = 7

	/// 30 Shots / 6 Second
	case mav30In6Second = 8
}

extension GoproBurstRate: Enumeration {
    public static var typeName = "GOPRO_BURST_RATE"
    public static var typeDescription = ""
    public static var allMembers = [mav3In1Second, mav5In1Second, mav10In1Second, mav10In2Second, mav10In3Second, mav30In1Second, mav30In2Second, mav30In3Second, mav30In6Second]
    public static var membersDescriptions = [("GOPRO_BURST_RATE_3_IN_1_SECOND", "3 Shots / 1 Second"), ("GOPRO_BURST_RATE_5_IN_1_SECOND", "5 Shots / 1 Second"), ("GOPRO_BURST_RATE_10_IN_1_SECOND", "10 Shots / 1 Second"), ("GOPRO_BURST_RATE_10_IN_2_SECOND", "10 Shots / 2 Second"), ("GOPRO_BURST_RATE_10_IN_3_SECOND", "10 Shots / 3 Second (Hero 4 Only)"), ("GOPRO_BURST_RATE_30_IN_1_SECOND", "30 Shots / 1 Second"), ("GOPRO_BURST_RATE_30_IN_2_SECOND", "30 Shots / 2 Second"), ("GOPRO_BURST_RATE_30_IN_3_SECOND", "30 Shots / 3 Second"), ("GOPRO_BURST_RATE_30_IN_6_SECOND", "30 Shots / 6 Second")]
    public static var enumEnd = UInt(9)
}
