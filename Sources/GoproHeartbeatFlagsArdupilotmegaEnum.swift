//
//  GoproHeartbeatFlagsArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproHeartbeatFlags: Int {

	/// GoPro is currently recording
	case goproFlagRecording = 1
}

extension GoproHeartbeatFlags: Enumeration {
    public static var typeName = "GOPRO_HEARTBEAT_FLAGS"
    public static var typeDescription = ""
    public static var allMembers = [goproFlagRecording]
    public static var membersDescriptions = [("GOPRO_FLAG_RECORDING", "GoPro is currently recording")]
    public static var enumEnd = UInt(2)
}
