//
//  GoproHeartbeatStatusArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproHeartbeatStatus: UInt8 {

	/// No GoPro connected
	case disconnected = 0

	/// The detected GoPro is not HeroBus compatible
	case incompatible = 1

	/// A HeroBus compatible GoPro is connected
	case connected = 2

	/// An unrecoverable error was encountered with the connected GoPro, it may require a power cycle
	case error = 3
}

extension GoproHeartbeatStatus: Enumeration {
    public static var typeName = "GOPRO_HEARTBEAT_STATUS"
    public static var typeDescription = ""
    public static var allMembers = [disconnected, incompatible, connected, error]
    public static var membersDescriptions = [("GOPRO_HEARTBEAT_STATUS_DISCONNECTED", "No GoPro connected"), ("GOPRO_HEARTBEAT_STATUS_INCOMPATIBLE", "The detected GoPro is not HeroBus compatible"), ("GOPRO_HEARTBEAT_STATUS_CONNECTED", "A HeroBus compatible GoPro is connected"), ("GOPRO_HEARTBEAT_STATUS_ERROR", "An unrecoverable error was encountered with the connected GoPro, it may require a power cycle")]
    public static var enumEnd = UInt(4)
}
