//
//  UavionixADSBOutDynamicStateUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// State flags for ADS-B transponder dynamic report
public enum UavionixADSBOutDynamicState: Int {
	case intentChange = 1
	case autopilotEnabled = 2
	case nicbaroCrosschecked = 4
	case onGround = 8
	case ident = 16
}

extension UavionixADSBOutDynamicState: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_DYNAMIC_STATE"
    public static var typeDescription = "State flags for ADS-B transponder dynamic report"
    public static var allMembers = [intentChange, autopilotEnabled, nicbaroCrosschecked, onGround, ident]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_DYNAMIC_STATE_INTENT_CHANGE", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_STATE_AUTOPILOT_ENABLED", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_STATE_NICBARO_CROSSCHECKED", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_STATE_ON_GROUND", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_STATE_IDENT", "")]
    public static var enumEnd = UInt(17)
}
