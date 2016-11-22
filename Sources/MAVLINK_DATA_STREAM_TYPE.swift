//
//  MAVLINK_DATA_STREAM_TYPE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum MavlinkDataStreamType: Int {
	case mavlinkDataStreamImgJpeg = 1
	case mavlinkDataStreamImgBmp = 2
	case mavlinkDataStreamImgRaw8u = 3
	case mavlinkDataStreamImgRaw32u = 4
	case mavlinkDataStreamImgPgm = 5
	case mavlinkDataStreamImgPng = 6
}

extension MavlinkDataStreamType: Enumeration {
    public static var typeName = "MAVLINK_DATA_STREAM_TYPE"
    public static var typeDescription = ""
    public static var allMembers = [mavlinkDataStreamImgJpeg, mavlinkDataStreamImgBmp, mavlinkDataStreamImgRaw8u, mavlinkDataStreamImgRaw32u, mavlinkDataStreamImgPgm, mavlinkDataStreamImgPng]
    public static var membersDescriptions = [("MAVLINK_DATA_STREAM_IMG_JPEG", ""), ("MAVLINK_DATA_STREAM_IMG_BMP", ""), ("MAVLINK_DATA_STREAM_IMG_RAW8U", ""), ("MAVLINK_DATA_STREAM_IMG_RAW32U", ""), ("MAVLINK_DATA_STREAM_IMG_PGM", ""), ("MAVLINK_DATA_STREAM_IMG_PNG", "")]
    public static var enumEnd = UInt(7)
}
