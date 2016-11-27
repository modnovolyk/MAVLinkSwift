//
//  UavionixADSBEmergencyStatusUavionixEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Emergency status encoding
public enum UavionixADSBEmergencyStatus: Int {
	case uavionixAdsbOutNoEmergency = 0
	case uavionixAdsbOutGeneralEmergency = 1
	case uavionixAdsbOutLifeguardEmergency = 2
	case uavionixAdsbOutMinimumFuelEmergency = 3
	case uavionixAdsbOutNoCommEmergency = 4
	case uavionixAdsbOutUnlawfulInterferanceEmergency = 5
	case uavionixAdsbOutDownedAircraftEmergency = 6
	case uavionixAdsbOutReserved = 7
}

extension UavionixADSBEmergencyStatus: Enumeration {
    public static var typeName = "UAVIONIX_ADSB_EMERGENCY_STATUS"
    public static var typeDescription = "Emergency status encoding"
    public static var allMembers = [uavionixAdsbOutNoEmergency, uavionixAdsbOutGeneralEmergency, uavionixAdsbOutLifeguardEmergency, uavionixAdsbOutMinimumFuelEmergency, uavionixAdsbOutNoCommEmergency, uavionixAdsbOutUnlawfulInterferanceEmergency, uavionixAdsbOutDownedAircraftEmergency, uavionixAdsbOutReserved]
    public static var membersDescriptions = [("UAVIONIX_ADSB_OUT_NO_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_GENERAL_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_LIFEGUARD_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_MINIMUM_FUEL_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_NO_COMM_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_UNLAWFUL_INTERFERANCE_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_DOWNED_AIRCRAFT_EMERGENCY", ""), ("UAVIONIX_ADSB_OUT_RESERVED", "")]
    public static var enumEnd = UInt(8)
}
