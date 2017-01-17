//
//  V2ExtensionCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Message implementing parts of the V2 payload specs in V1 frames for transitional support.
public struct V2Extension {

	/// Network ID (0 for broadcast)
	public let targetNetwork: UInt8

	/// System ID (0 for broadcast)
	public let targetSystem: UInt8

	/// Component ID (0 for broadcast)
	public let targetComponent: UInt8

	/// A code that identifies the software component that understands this message (analogous to usb device classes or mime type strings). If this code is less than 32768, it is considered a 'registered' protocol extension and the corresponding entry should be added to https://github.com/mavlink/mavlink/extension-message-ids.xml. Software creators can register blocks of message IDs as needed (useful for GCS specific metadata, etc...). Message_types greater than 32767 are considered local experiments and should not be checked in to any widely distributed codebase.
	public let messageType: UInt16

	/// Variable length payload. The length is defined by the remaining message length when subtracting the header and other fields. The entire content of this block is opaque unless you understand any the encoding message_type. The particular encoding used can be extension specific and might not always be documented as part of the mavlink specification.
	public let payload: [UInt8]
}

extension V2Extension: Message {
    public static let id = UInt8(248)
    public static var typeName = "V2_EXTENSION"
    public static var typeDescription = "Message implementing parts of the V2 payload specs in V1 frames for transitional support."
    public static var fieldDefinitions: [FieldDefinition] = [("targetNetwork", 2, "UInt8", 0, "Network ID (0 for broadcast)"), ("targetSystem", 3, "UInt8", 0, "System ID (0 for broadcast)"), ("targetComponent", 4, "UInt8", 0, "Component ID (0 for broadcast)"), ("messageType", 0, "UInt16", 0, "A code that identifies the software component that understands this message (analogous to usb device classes or mime type strings). If this code is less than 32768, it is considered a 'registered' protocol extension and the corresponding entry should be added to https://github.com/mavlink/mavlink/extension-message-ids.xml. Software creators can register blocks of message IDs as needed (useful for GCS specific metadata, etc...). Message_types greater than 32767 are considered local experiments and should not be checked in to any widely distributed codebase."), ("payload", 5, "[UInt8]", 249, "Variable length payload. The length is defined by the remaining message length when subtracting the header and other fields. The entire content of this block is opaque unless you understand any the encoding message_type. The particular encoding used can be extension specific and might not always be documented as part of the mavlink specification.")]

    public init(data: Data) throws {
		messageType = try data.number(at: 0)
		targetNetwork = try data.number(at: 2)
		targetSystem = try data.number(at: 3)
		targetComponent = try data.number(at: 4)
		payload = try data.array(at: 5, capacity: 249)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 254)
		try payload.set(messageType, at: 0)
		try payload.set(targetNetwork, at: 2)
		try payload.set(targetSystem, at: 3)
		try payload.set(targetComponent, at: 4)
		try payload.set(self.payload, at: 5, capacity: 249)
        return payload
    }
}
