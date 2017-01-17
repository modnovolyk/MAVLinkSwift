//
//  GoproRequestStatusArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
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
