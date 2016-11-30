//
//  CameraFeedbackFlagsArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum CameraFeedbackFlags: Int {

	/// Shooting photos, not video
	case cameraFeedbackPhoto = 0

	/// Shooting video, not stills
	case cameraFeedbackVideo = 1

	/// Unable to achieve requested exposure (e.g. shutter speed too low)
	case cameraFeedbackBadexposure = 2

	/// Closed loop feedback from camera, we know for sure it has successfully taken a picture
	case cameraFeedbackClosedloop = 3

	/// Open loop camera, an image trigger has been requested but we can't know for sure it has successfully taken a picture
	case cameraFeedbackOpenloop = 4
}

extension CameraFeedbackFlags: Enumeration {
    public static var typeName = "CAMERA_FEEDBACK_FLAGS"
    public static var typeDescription = ""
    public static var allMembers = [cameraFeedbackPhoto, cameraFeedbackVideo, cameraFeedbackBadexposure, cameraFeedbackClosedloop, cameraFeedbackOpenloop]
    public static var membersDescriptions = [("CAMERA_FEEDBACK_PHOTO", "Shooting photos, not video"), ("CAMERA_FEEDBACK_VIDEO", "Shooting video, not stills"), ("CAMERA_FEEDBACK_BADEXPOSURE", "Unable to achieve requested exposure (e.g. shutter speed too low)"), ("CAMERA_FEEDBACK_CLOSEDLOOP", "Closed loop feedback from camera, we know for sure it has successfully taken a picture"), ("CAMERA_FEEDBACK_OPENLOOP", "Open loop camera, an image trigger has been requested but we can't know for sure it has successfully taken a picture")]
    public static var enumEnd = UInt(5)
}
