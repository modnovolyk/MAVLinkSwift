//
//  UavionixADSBOutCfgGPSOffsetLatUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// GPS lataral offset encoding
public enum UavionixADSBOutCfgGPSOffsetLat: Int {
	case noData = 0
	case left2m = 1
	case left4m = 2
	case left6m = 3
	case right0m = 4
	case right2m = 5
	case right4m = 6
	case right6m = 7
}

extension UavionixADSBOutCfgGPSOffsetLat: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT"
    public static var typeDescription = "GPS lataral offset encoding"
    public static var allMembers = [noData, left2m, left4m, left6m, right0m, right2m, right4m, right6m]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_NO_DATA", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_LEFT_2M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_LEFT_4M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_LEFT_6M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_RIGHT_0M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_RIGHT_2M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_RIGHT_4M", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LAT_RIGHT_6M", "")]
    public static var enumEnd = UInt(8)
}
