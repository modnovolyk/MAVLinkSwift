//
//  UavionixADSBOutRfSelectUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Transceiver RF control flags for ADS-B transponder dynamic reports
public enum UavionixADSBOutRfSelect: Int {
	case standby = 0
	case rxEnabled = 1
	case txEnabled = 2
}

extension UavionixADSBOutRfSelect: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_RF_SELECT"
    public static var typeDescription = "Transceiver RF control flags for ADS-B transponder dynamic reports"
    public static var allMembers = [standby, rxEnabled, txEnabled]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_RF_SELECT_STANDBY", ""), ("UAVIONIX_ADSB_OUT_RF_SELECT_RX_ENABLED", ""), ("UAVIONIX_ADSB_OUT_RF_SELECT_TX_ENABLED", "")]
    public static var enumEnd = UInt(3)
}
