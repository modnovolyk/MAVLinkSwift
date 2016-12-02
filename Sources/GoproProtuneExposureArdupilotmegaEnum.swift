//
//  GoproProtuneExposureArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproProtuneExposure: Int {

	/// -5.0 EV (Hero 3+ Only)
	case neg50 = 0

	/// -4.5 EV (Hero 3+ Only)
	case neg45 = 1

	/// -4.0 EV (Hero 3+ Only)
	case neg40 = 2

	/// -3.5 EV (Hero 3+ Only)
	case neg35 = 3

	/// -3.0 EV (Hero 3+ Only)
	case neg30 = 4

	/// -2.5 EV (Hero 3+ Only)
	case neg25 = 5

	/// -2.0 EV
	case neg20 = 6

	/// -1.5 EV
	case neg15 = 7

	/// -1.0 EV
	case neg10 = 8

	/// -0.5 EV
	case neg05 = 9

	/// 0.0 EV
	case zero = 10

	/// +0.5 EV
	case pos05 = 11

	/// +1.0 EV
	case pos10 = 12

	/// +1.5 EV
	case pos15 = 13

	/// +2.0 EV
	case pos20 = 14

	/// +2.5 EV (Hero 3+ Only)
	case pos25 = 15

	/// +3.0 EV (Hero 3+ Only)
	case pos30 = 16

	/// +3.5 EV (Hero 3+ Only)
	case pos35 = 17

	/// +4.0 EV (Hero 3+ Only)
	case pos40 = 18

	/// +4.5 EV (Hero 3+ Only)
	case pos45 = 19

	/// +5.0 EV (Hero 3+ Only)
	case pos50 = 20
}

extension GoproProtuneExposure: Enumeration {
    public static var typeName = "GOPRO_PROTUNE_EXPOSURE"
    public static var typeDescription = ""
    public static var allMembers = [neg50, neg45, neg40, neg35, neg30, neg25, neg20, neg15, neg10, neg05, zero, pos05, pos10, pos15, pos20, pos25, pos30, pos35, pos40, pos45, pos50]
    public static var membersDescriptions = [("GOPRO_PROTUNE_EXPOSURE_NEG_5_0", "-5.0 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_4_5", "-4.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_4_0", "-4.0 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_3_5", "-3.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_3_0", "-3.0 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_2_5", "-2.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_NEG_2_0", "-2.0 EV"), ("GOPRO_PROTUNE_EXPOSURE_NEG_1_5", "-1.5 EV"), ("GOPRO_PROTUNE_EXPOSURE_NEG_1_0", "-1.0 EV"), ("GOPRO_PROTUNE_EXPOSURE_NEG_0_5", "-0.5 EV"), ("GOPRO_PROTUNE_EXPOSURE_ZERO", "0.0 EV"), ("GOPRO_PROTUNE_EXPOSURE_POS_0_5", "+0.5 EV"), ("GOPRO_PROTUNE_EXPOSURE_POS_1_0", "+1.0 EV"), ("GOPRO_PROTUNE_EXPOSURE_POS_1_5", "+1.5 EV"), ("GOPRO_PROTUNE_EXPOSURE_POS_2_0", "+2.0 EV"), ("GOPRO_PROTUNE_EXPOSURE_POS_2_5", "+2.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_POS_3_0", "+3.0 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_POS_3_5", "+3.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_POS_4_0", "+4.0 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_POS_4_5", "+4.5 EV (Hero 3+ Only)"), ("GOPRO_PROTUNE_EXPOSURE_POS_5_0", "+5.0 EV (Hero 3+ Only)")]
    public static var enumEnd = UInt(21)
}
