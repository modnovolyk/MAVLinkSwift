//
//  MAVRemoteLogDataBlockCommandsArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Special ACK block numbers control activation of dataflash log streaming
public enum MAVRemoteLogDataBlockCommands: UInt32 {

	/// UAV to stop sending DataFlash blocks
	case mavRemoteLogDataBlockStop = 2147483645

	/// UAV to start sending DataFlash blocks
	case mavRemoteLogDataBlockStart = 2147483646
}

extension MAVRemoteLogDataBlockCommands: Enumeration {
    public static var typeName = "MAV_REMOTE_LOG_DATA_BLOCK_COMMANDS"
    public static var typeDescription = "Special ACK block numbers control activation of dataflash log streaming"
    public static var allMembers = [mavRemoteLogDataBlockStop, mavRemoteLogDataBlockStart]
    public static var membersDescriptions = [("MAV_REMOTE_LOG_DATA_BLOCK_STOP", "UAV to stop sending DataFlash blocks"), ("MAV_REMOTE_LOG_DATA_BLOCK_START", "UAV to start sending DataFlash blocks")]
    public static var enumEnd = UInt(2147483647)
}
