//
//  GoproCaptureModeArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproCaptureMode: UInt8 {

	/// Video mode
	case video = 0

	/// Photo mode
	case photo = 1

	/// Burst mode, hero 3+ only
	case burst = 2

	/// Time lapse mode, hero 3+ only
	case timeLapse = 3

	/// Multi shot mode, hero 4 only
	case multiShot = 4

	/// Playback mode, hero 4 only, silver only except when LCD or HDMI is connected to black
	case playback = 5

	/// Playback mode, hero 4 only
	case setup = 6

	/// Mode not yet known
	case unknown = 255
}

extension GoproCaptureMode: Enumeration {
    public static var typeName = "GOPRO_CAPTURE_MODE"
    public static var typeDescription = ""
    public static var allMembers = [video, photo, burst, timeLapse, multiShot, playback, setup, unknown]
    public static var membersDescriptions = [("GOPRO_CAPTURE_MODE_VIDEO", "Video mode"), ("GOPRO_CAPTURE_MODE_PHOTO", "Photo mode"), ("GOPRO_CAPTURE_MODE_BURST", "Burst mode, hero 3+ only"), ("GOPRO_CAPTURE_MODE_TIME_LAPSE", "Time lapse mode, hero 3+ only"), ("GOPRO_CAPTURE_MODE_MULTI_SHOT", "Multi shot mode, hero 4 only"), ("GOPRO_CAPTURE_MODE_PLAYBACK", "Playback mode, hero 4 only, silver only except when LCD or HDMI is connected to black"), ("GOPRO_CAPTURE_MODE_SETUP", "Playback mode, hero 4 only"), ("GOPRO_CAPTURE_MODE_UNKNOWN", "Mode not yet known")]
    public static var enumEnd = UInt(256)
}
