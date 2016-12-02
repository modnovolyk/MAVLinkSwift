//
//  LedControlPatternArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
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
