//
//  LedControlPatternArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum LedControlPattern: Int {

	/// LED patterns off (return control to regular vehicle control)
	case off = 0

	/// LEDs show pattern during firmware update
	case firmwareupdate = 1

	/// Custom Pattern using custom bytes fields
	case custom = 255
}

extension LedControlPattern: Enumeration {
    public static var typeName = "LED_CONTROL_PATTERN"
    public static var typeDescription = ""
    public static var allMembers = [off, firmwareupdate, custom]
    public static var membersDescriptions = [("LED_CONTROL_PATTERN_OFF", "LED patterns off (return control to regular vehicle control)"), ("LED_CONTROL_PATTERN_FIRMWAREUPDATE", "LEDs show pattern during firmware update"), ("LED_CONTROL_PATTERN_CUSTOM", "Custom Pattern using custom bytes fields")]
    public static var enumEnd = UInt(256)
}
