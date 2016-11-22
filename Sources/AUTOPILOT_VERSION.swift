//
//  AUTOPILOT_VERSION.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Version and capability of autopilot software
public struct AutopilotVersion {

	/// bitmask of capabilities (see MAV_PROTOCOL_CAPABILITY enum)
	public let capabilities: UInt64

	/// Firmware version number
	public let flightSwVersion: UInt32

	/// Middleware version number
	public let middlewareSwVersion: UInt32

	/// Operating system version number
	public let osSwVersion: UInt32

	/// HW / board version (last 8 bytes should be silicon ID, if any)
	public let boardVersion: UInt32

	/// Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases.
	public let flightCustomVersion: [UInt8]

	/// Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases.
	public let middlewareCustomVersion: [UInt8]

	/// Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases.
	public let osCustomVersion: [UInt8]

	/// ID of the board vendor
	public let vendorId: UInt16

	/// ID of the product
	public let productId: UInt16

	/// UID if provided by hardware
	public let uid: UInt64
}

extension AutopilotVersion: Message {
    public static let id = UInt8(148)
    public static var typeName = "AUTOPILOT_VERSION"
    public static var typeDescription = "Version and capability of autopilot software"
    public static var fieldDefinitions: [FieldDefinition] = [("capabilities", 0, "UInt64", 0, "bitmask of capabilities (see MAV_PROTOCOL_CAPABILITY enum)"), ("flightSwVersion", 16, "UInt32", 0, "Firmware version number"), ("middlewareSwVersion", 20, "UInt32", 0, "Middleware version number"), ("osSwVersion", 24, "UInt32", 0, "Operating system version number"), ("boardVersion", 28, "UInt32", 0, "HW / board version (last 8 bytes should be silicon ID, if any)"), ("flightCustomVersion", 36, "[UInt8]", 8, "Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases."), ("middlewareCustomVersion", 44, "[UInt8]", 8, "Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases."), ("osCustomVersion", 52, "[UInt8]", 8, "Custom version field, commonly the first 8 bytes of the git hash. This is not an unique identifier, but should allow to identify the commit using the main version number even for very large code bases."), ("vendorId", 32, "UInt16", 0, "ID of the board vendor"), ("productId", 34, "UInt16", 0, "ID of the product"), ("uid", 8, "UInt64", 0, "UID if provided by hardware")]

    public init(data: Data) throws {
		capabilities = try data.number(at: 0)
		uid = try data.number(at: 8)
		flightSwVersion = try data.number(at: 16)
		middlewareSwVersion = try data.number(at: 20)
		osSwVersion = try data.number(at: 24)
		boardVersion = try data.number(at: 28)
		vendorId = try data.number(at: 32)
		productId = try data.number(at: 34)
		flightCustomVersion = try data.array(at: 36, capacity: 8)
		middlewareCustomVersion = try data.array(at: 44, capacity: 8)
		osCustomVersion = try data.array(at: 52, capacity: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 60)
		try payload.set(capabilities, at: 0)
		try payload.set(uid, at: 8)
		try payload.set(flightSwVersion, at: 16)
		try payload.set(middlewareSwVersion, at: 20)
		try payload.set(osSwVersion, at: 24)
		try payload.set(boardVersion, at: 28)
		try payload.set(vendorId, at: 32)
		try payload.set(productId, at: 34)
		try payload.set(flightCustomVersion, at: 36, capacity: 8)
		try payload.set(middlewareCustomVersion, at: 44, capacity: 8)
		try payload.set(osCustomVersion, at: 52, capacity: 8)
        return payload
    }
}
