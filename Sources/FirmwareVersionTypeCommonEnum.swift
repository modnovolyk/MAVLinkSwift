//
//  FirmwareVersionTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// These values define the type of firmware release. These values indicate the first version or release of this type. For example the first alpha release would be 64, the second would be 65.
public enum FirmwareVersionType: Int {

	/// development release
	case dev = 0

	/// alpha release
	case alpha = 64

	/// beta release
	case beta = 128

	/// release candidate
	case rc = 192

	/// official stable release
	case official = 255
}

extension FirmwareVersionType: Enumeration {
    public static var typeName = "FIRMWARE_VERSION_TYPE"
    public static var typeDescription = "These values define the type of firmware release. These values indicate the first version or release of this type. For example the first alpha release would be 64, the second would be 65."
    public static var allMembers = [dev, alpha, beta, rc, official]
    public static var membersDescriptions = [("FIRMWARE_VERSION_TYPE_DEV", "development release"), ("FIRMWARE_VERSION_TYPE_ALPHA", "alpha release"), ("FIRMWARE_VERSION_TYPE_BETA", "beta release"), ("FIRMWARE_VERSION_TYPE_RC", "release candidate"), ("FIRMWARE_VERSION_TYPE_OFFICIAL", "official stable release")]
    public static var enumEnd = UInt(256)
}
