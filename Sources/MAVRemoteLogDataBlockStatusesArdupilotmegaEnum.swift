//
//  MAVRemoteLogDataBlockStatusesArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Possible remote log data block statuses
public enum MAVRemoteLogDataBlockStatuses: UInt8 {

	/// This block has NOT been received
	case mavRemoteLogDataBlockNack = 0

	/// This block has been received
	case mavRemoteLogDataBlockAck = 1
}

extension MAVRemoteLogDataBlockStatuses: Enumeration {
    public static var typeName = "MAV_REMOTE_LOG_DATA_BLOCK_STATUSES"
    public static var typeDescription = "Possible remote log data block statuses"
    public static var allMembers = [mavRemoteLogDataBlockNack, mavRemoteLogDataBlockAck]
    public static var membersDescriptions = [("MAV_REMOTE_LOG_DATA_BLOCK_NACK", "This block has NOT been received"), ("MAV_REMOTE_LOG_DATA_BLOCK_ACK", "This block has been received")]
    public static var enumEnd = UInt(2)
}
