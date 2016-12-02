//
//  UavionixADSBOutDynamicGPSFixUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Status for ADS-B transponder dynamic input
public enum UavionixADSBOutDynamicGPSFix: Int {
	case none0 = 0
	case none1 = 1
	case mav2d = 2
	case mav3d = 3
	case dgps = 4
	case rtk = 5
}

extension UavionixADSBOutDynamicGPSFix: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX"
    public static var typeDescription = "Status for ADS-B transponder dynamic input"
    public static var allMembers = [none0, none1, mav2d, mav3d, dgps, rtk]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_NONE_0", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_NONE_1", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_2D", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_3D", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_DGPS", ""), ("UAVIONIX_ADSB_OUT_DYNAMIC_GPS_FIX_RTK", "")]
    public static var enumEnd = UInt(6)
}
