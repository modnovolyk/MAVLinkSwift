//
//  GoproCommandArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproCommand: UInt8 {

	/// (Get/Set)
	case power = 0

	/// (Get/Set)
	case captureMode = 1

	/// (___/Set)
	case shutter = 2

	/// (Get/___)
	case battery = 3

	/// (Get/___)
	case model = 4

	/// (Get/Set)
	case videoSettings = 5

	/// (Get/Set)
	case lowLight = 6

	/// (Get/Set)
	case photoResolution = 7

	/// (Get/Set)
	case photoBurstRate = 8

	/// (Get/Set)
	case protune = 9

	/// (Get/Set) Hero 3+ Only
	case protuneWhiteBalance = 10

	/// (Get/Set) Hero 3+ Only
	case protuneColour = 11

	/// (Get/Set) Hero 3+ Only
	case protuneGain = 12

	/// (Get/Set) Hero 3+ Only
	case protuneSharpness = 13

	/// (Get/Set) Hero 3+ Only
	case protuneExposure = 14

	/// (Get/Set)
	case time = 15

	/// (Get/Set)
	case charging = 16
}

extension GoproCommand: Enumeration {
    public static var typeName = "GOPRO_COMMAND"
    public static var typeDescription = ""
    public static var allMembers = [power, captureMode, shutter, battery, model, videoSettings, lowLight, photoResolution, photoBurstRate, protune, protuneWhiteBalance, protuneColour, protuneGain, protuneSharpness, protuneExposure, time, charging]
    public static var membersDescriptions = [("GOPRO_COMMAND_POWER", "(Get/Set)"), ("GOPRO_COMMAND_CAPTURE_MODE", "(Get/Set)"), ("GOPRO_COMMAND_SHUTTER", "(___/Set)"), ("GOPRO_COMMAND_BATTERY", "(Get/___)"), ("GOPRO_COMMAND_MODEL", "(Get/___)"), ("GOPRO_COMMAND_VIDEO_SETTINGS", "(Get/Set)"), ("GOPRO_COMMAND_LOW_LIGHT", "(Get/Set)"), ("GOPRO_COMMAND_PHOTO_RESOLUTION", "(Get/Set)"), ("GOPRO_COMMAND_PHOTO_BURST_RATE", "(Get/Set)"), ("GOPRO_COMMAND_PROTUNE", "(Get/Set)"), ("GOPRO_COMMAND_PROTUNE_WHITE_BALANCE", "(Get/Set) Hero 3+ Only"), ("GOPRO_COMMAND_PROTUNE_COLOUR", "(Get/Set) Hero 3+ Only"), ("GOPRO_COMMAND_PROTUNE_GAIN", "(Get/Set) Hero 3+ Only"), ("GOPRO_COMMAND_PROTUNE_SHARPNESS", "(Get/Set) Hero 3+ Only"), ("GOPRO_COMMAND_PROTUNE_EXPOSURE", "(Get/Set) Hero 3+ Only"), ("GOPRO_COMMAND_TIME", "(Get/Set)"), ("GOPRO_COMMAND_CHARGING", "(Get/Set)")]
    public static var enumEnd = UInt(17)
}
