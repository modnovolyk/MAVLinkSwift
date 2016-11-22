//
//  GOPRO_HEARTBEAT_FLAGS.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
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
