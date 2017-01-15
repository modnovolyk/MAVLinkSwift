//
//  MAVModeFlagDecodePositionCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// These values encode the bit positions of the decode position. These values can be used to read the value of a flag bit by combining the base_mode variable with AND with the flag position value. The result will be either 0 or 1, depending on if the flag is set or not.
public enum MAVModeFlagDecodePosition: Int {

	/// Eighth bit: 00000001
	case customMode = 1

	/// Seventh bit: 00000010
	case test = 2

	/// Sixt bit: 00000100
	case auto = 4

	/// Fifth bit: 00001000
	case guided = 8

	/// Fourth bit: 00010000
	case stabilize = 16

	/// Third bit: 00100000
	case hil = 32

	/// Second bit: 01000000
	case manual = 64

	/// First bit: 10000000
	case safety = 128
}

extension MAVModeFlagDecodePosition: Enumeration {
    public static var typeName = "MAV_MODE_FLAG_DECODE_POSITION"
    public static var typeDescription = "These values encode the bit positions of the decode position. These values can be used to read the value of a flag bit by combining the base_mode variable with AND with the flag position value. The result will be either 0 or 1, depending on if the flag is set or not."
    public static var allMembers = [customMode, test, auto, guided, stabilize, hil, manual, safety]
    public static var membersDescriptions = [("MAV_MODE_FLAG_DECODE_POSITION_CUSTOM_MODE", "Eighth bit: 00000001"), ("MAV_MODE_FLAG_DECODE_POSITION_TEST", "Seventh bit: 00000010"), ("MAV_MODE_FLAG_DECODE_POSITION_AUTO", "Sixt bit: 00000100"), ("MAV_MODE_FLAG_DECODE_POSITION_GUIDED", "Fifth bit: 00001000"), ("MAV_MODE_FLAG_DECODE_POSITION_STABILIZE", "Fourth bit: 00010000"), ("MAV_MODE_FLAG_DECODE_POSITION_HIL", "Third bit: 00100000"), ("MAV_MODE_FLAG_DECODE_POSITION_MANUAL", "Second bit: 01000000"), ("MAV_MODE_FLAG_DECODE_POSITION_SAFETY", "First bit: 10000000")]
    public static var enumEnd = UInt(129)
}
