//
//  ADSBEmitterTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// ADSB classification for the type of vehicle emitting the transponder signal
public enum ADSBEmitterType: UInt8 {
	case noInfo = 0
	case light = 1
	case small = 2
	case large = 3
	case highVortexLarge = 4
	case heavy = 5
	case highlyManuv = 6
	case rotocraft = 7
	case unassigned = 8
	case glider = 9
	case lighterAir = 10
	case parachute = 11
	case ultraLight = 12
	case unassigned2 = 13
	case uav = 14
	case space = 15
	case unassgined3 = 16
	case emergencySurface = 17
	case serviceSurface = 18
	case pointObstacle = 19
}

extension ADSBEmitterType: Enumeration {
    public static var typeName = "ADSB_EMITTER_TYPE"
    public static var typeDescription = "ADSB classification for the type of vehicle emitting the transponder signal"
    public static var allMembers = [noInfo, light, small, large, highVortexLarge, heavy, highlyManuv, rotocraft, unassigned, glider, lighterAir, parachute, ultraLight, unassigned2, uav, space, unassgined3, emergencySurface, serviceSurface, pointObstacle]
    public static var membersDescriptions = [("ADSB_EMITTER_TYPE_NO_INFO", ""), ("ADSB_EMITTER_TYPE_LIGHT", ""), ("ADSB_EMITTER_TYPE_SMALL", ""), ("ADSB_EMITTER_TYPE_LARGE", ""), ("ADSB_EMITTER_TYPE_HIGH_VORTEX_LARGE", ""), ("ADSB_EMITTER_TYPE_HEAVY", ""), ("ADSB_EMITTER_TYPE_HIGHLY_MANUV", ""), ("ADSB_EMITTER_TYPE_ROTOCRAFT", ""), ("ADSB_EMITTER_TYPE_UNASSIGNED", ""), ("ADSB_EMITTER_TYPE_GLIDER", ""), ("ADSB_EMITTER_TYPE_LIGHTER_AIR", ""), ("ADSB_EMITTER_TYPE_PARACHUTE", ""), ("ADSB_EMITTER_TYPE_ULTRA_LIGHT", ""), ("ADSB_EMITTER_TYPE_UNASSIGNED2", ""), ("ADSB_EMITTER_TYPE_UAV", ""), ("ADSB_EMITTER_TYPE_SPACE", ""), ("ADSB_EMITTER_TYPE_UNASSGINED3", ""), ("ADSB_EMITTER_TYPE_EMERGENCY_SURFACE", ""), ("ADSB_EMITTER_TYPE_SERVICE_SURFACE", ""), ("ADSB_EMITTER_TYPE_POINT_OBSTACLE", "")]
    public static var enumEnd = UInt(20)
}
