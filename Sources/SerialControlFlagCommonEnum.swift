//
//  SerialControlFlagCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// SERIAL_CONTROL flags (bitmask)
public enum SerialControlFlag: Int {

	/// Set if this is a reply
	case reply = 1

	/// Set if the sender wants the receiver to send a response as another SERIAL_CONTROL message
	case respond = 2

	/// Set if access to the serial port should be removed from whatever driver is currently using it, giving exclusive access to the SERIAL_CONTROL protocol. The port can be handed back by sending a request without this flag set
	case exclusive = 4

	/// Block on writes to the serial port
	case blocking = 8

	/// Send multiple replies until port is drained
	case multi = 16
}

extension SerialControlFlag: Enumeration {
    public static var typeName = "SERIAL_CONTROL_FLAG"
    public static var typeDescription = "SERIAL_CONTROL flags (bitmask)"
    public static var allMembers = [reply, respond, exclusive, blocking, multi]
    public static var membersDescriptions = [("SERIAL_CONTROL_FLAG_REPLY", "Set if this is a reply"), ("SERIAL_CONTROL_FLAG_RESPOND", "Set if the sender wants the receiver to send a response as another SERIAL_CONTROL message"), ("SERIAL_CONTROL_FLAG_EXCLUSIVE", "Set if access to the serial port should be removed from whatever driver is currently using it, giving exclusive access to the SERIAL_CONTROL protocol. The port can be handed back by sending a request without this flag set"), ("SERIAL_CONTROL_FLAG_BLOCKING", "Block on writes to the serial port"), ("SERIAL_CONTROL_FLAG_MULTI", "Send multiple replies until port is drained")]
    public static var enumEnd = UInt(17)
}
