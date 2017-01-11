//
//  UavionixADSBOutCfgGPSOffsetLonUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// GPS longitudinal offset encoding
public enum UavionixADSBOutCfgGPSOffsetLon: Int {
	case noData = 0
	case appliedBySensor = 1
}

extension UavionixADSBOutCfgGPSOffsetLon: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LON"
    public static var typeDescription = "GPS longitudinal offset encoding"
    public static var allMembers = [noData, appliedBySensor]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LON_NO_DATA", ""), ("UAVIONIX_ADSB_OUT_CFG_GPS_OFFSET_LON_APPLIED_BY_SENSOR", "")]
    public static var enumEnd = UInt(2)
}
