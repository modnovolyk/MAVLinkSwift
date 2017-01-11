//
//  GoproRequestStatusArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum GoproRequestStatus: UInt8 {

	/// The write message with ID indicated succeeded
	case goproRequestSuccess = 0

	/// The write message with ID indicated failed
	case goproRequestFailed = 1
}

extension GoproRequestStatus: Enumeration {
    public static var typeName = "GOPRO_REQUEST_STATUS"
    public static var typeDescription = ""
    public static var allMembers = [goproRequestSuccess, goproRequestFailed]
    public static var membersDescriptions = [("GOPRO_REQUEST_SUCCESS", "The write message with ID indicated succeeded"), ("GOPRO_REQUEST_FAILED", "The write message with ID indicated failed")]
    public static var enumEnd = UInt(2)
}
