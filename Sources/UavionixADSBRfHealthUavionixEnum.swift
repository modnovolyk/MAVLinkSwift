//
//  UavionixADSBRfHealthUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Status flags for ADS-B transponder dynamic output
public enum UavionixADSBRfHealth: Int {
	case initializing = 0
	case ok = 1
	case failTx = 2
	case failRx = 16
}

extension UavionixADSBRfHealth: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_RF_HEALTH"
    public static var typeDescription = "Status flags for ADS-B transponder dynamic output"
    public static var allMembers = [initializing, ok, failTx, failRx]
    public static var membersDescriptions = [("UAVIONIX_ADSB_RF_HEALTH_INITIALIZING", ""), ("UAVIONIX_ADSB_RF_HEALTH_OK", ""), ("UAVIONIX_ADSB_RF_HEALTH_FAIL_TX", ""), ("UAVIONIX_ADSB_RF_HEALTH_FAIL_RX", "")]
    public static var enumEnd = UInt(17)
}
