//
//  ADSBAltitudeTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration of the ADSB altimeter types
public enum ADSBAltitudeType: UInt8 {

	/// Altitude reported from a Baro source using QNH reference
	case pressureQnh = 0

	/// Altitude reported from a GNSS source
	case geometric = 1
}

extension ADSBAltitudeType: Enumeration {
    public static var typeName = "ADSB_ALTITUDE_TYPE"
    public static var typeDescription = "Enumeration of the ADSB altimeter types"
    public static var allMembers = [pressureQnh, geometric]
    public static var membersDescriptions = [("ADSB_ALTITUDE_TYPE_PRESSURE_QNH", "Altitude reported from a Baro source using QNH reference"), ("ADSB_ALTITUDE_TYPE_GEOMETRIC", "Altitude reported from a GNSS source")]
    public static var enumEnd = UInt(2)
}
