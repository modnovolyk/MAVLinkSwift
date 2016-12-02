//
//  UavionixADSBOutCfgAircraftSizeUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Definitions for aircraft size
public enum UavionixADSBOutCfgAircraftSize: Int {
	case noData = 0
	case l15mW23m = 1
	case l25mW28p5m = 2
	case l2534m = 3
	case l3533m = 4
	case l3538m = 5
	case l4539p5m = 6
	case l4545m = 7
	case l5545m = 8
	case l5552m = 9
	case l6559p5m = 10
	case l6567m = 11
	case l75W72p5m = 12
	case l75W80m = 13
	case l85W80m = 14
	case l85W90m = 15
}

extension UavionixADSBOutCfgAircraftSize: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE"
    public static var typeDescription = "Definitions for aircraft size"
    public static var allMembers = [noData, l15mW23m, l25mW28p5m, l2534m, l3533m, l3538m, l4539p5m, l4545m, l5545m, l5552m, l6559p5m, l6567m, l75W72p5m, l75W80m, l85W80m, l85W90m]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_NO_DATA", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L15M_W23M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L25M_W28P5M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L25_34M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L35_33M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L35_38M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L45_39P5M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L45_45M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L55_45M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L55_52M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L65_59P5M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L65_67M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L75_W72P5M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L75_W80M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L85_W80M", ""), ("UAVIONIX_ADSB_OUT_CFG_AIRCRAFT_SIZE_L85_W90M", "")]
    public static var enumEnd = UInt(16)
}
