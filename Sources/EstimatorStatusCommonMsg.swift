//
//  EstimatorStatusCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Estimator status message including flags, innovation test ratios and estimated accuracies. The flags message is an integer bitmask containing information on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS enum definition for further information. The innovaton test ratios show the magnitude of the sensor innovation divided by the innovation check threshold. Under normal operation the innovaton test ratios should be below 0.5 with occasional values up to 1.0. Values greater than 1.0 should be rare under normal operation and indicate that a measurement has been rejected by the filter. The user should be notified if an innovation test ratio greater than 1.0 is recorded. Notifications for values in the range between 0.5 and 1.0 should be optional and controllable by the user.
public struct EstimatorStatus {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// Integer bitmask indicating which EKF outputs are valid. See definition for ESTIMATOR_STATUS_FLAGS.
	public let flags: EstimatorStatusFlags

	/// Velocity innovation test ratio
	public let velRatio: Float

	/// Horizontal position innovation test ratio
	public let posHorizRatio: Float

	/// Vertical position innovation test ratio
	public let posVertRatio: Float

	/// Magnetometer innovation test ratio
	public let magRatio: Float

	/// Height above terrain innovation test ratio
	public let haglRatio: Float

	/// True airspeed innovation test ratio
	public let tasRatio: Float

	/// Horizontal position 1-STD accuracy relative to the EKF local origin (m)
	public let posHorizAccuracy: Float

	/// Vertical position 1-STD accuracy relative to the EKF local origin (m)
	public let posVertAccuracy: Float
}

extension EstimatorStatus: Message {
    public static let id = UInt8(230)
    public static var typeName = "ESTIMATOR_STATUS"
    public static var typeDescription = "Estimator status message including flags, innovation test ratios and estimated accuracies. The flags message is an integer bitmask containing information on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS enum definition for further information. The innovaton test ratios show the magnitude of the sensor innovation divided by the innovation check threshold. Under normal operation the innovaton test ratios should be below 0.5 with occasional values up to 1.0. Values greater than 1.0 should be rare under normal operation and indicate that a measurement has been rejected by the filter. The user should be notified if an innovation test ratio greater than 1.0 is recorded. Notifications for values in the range between 0.5 and 1.0 should be optional and controllable by the user."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("flags", 40, "EstimatorStatusFlags", 0, "Integer bitmask indicating which EKF outputs are valid. See definition for ESTIMATOR_STATUS_FLAGS."), ("velRatio", 8, "Float", 0, "Velocity innovation test ratio"), ("posHorizRatio", 12, "Float", 0, "Horizontal position innovation test ratio"), ("posVertRatio", 16, "Float", 0, "Vertical position innovation test ratio"), ("magRatio", 20, "Float", 0, "Magnetometer innovation test ratio"), ("haglRatio", 24, "Float", 0, "Height above terrain innovation test ratio"), ("tasRatio", 28, "Float", 0, "True airspeed innovation test ratio"), ("posHorizAccuracy", 32, "Float", 0, "Horizontal position 1-STD accuracy relative to the EKF local origin (m)"), ("posVertAccuracy", 36, "Float", 0, "Vertical position 1-STD accuracy relative to the EKF local origin (m)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		velRatio = try data.number(at: 8)
		posHorizRatio = try data.number(at: 12)
		posVertRatio = try data.number(at: 16)
		magRatio = try data.number(at: 20)
		haglRatio = try data.number(at: 24)
		tasRatio = try data.number(at: 28)
		posHorizAccuracy = try data.number(at: 32)
		posVertAccuracy = try data.number(at: 36)
		flags = try data.enumeration(at: 40)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(timeUsec, at: 0)
		try payload.set(velRatio, at: 8)
		try payload.set(posHorizRatio, at: 12)
		try payload.set(posVertRatio, at: 16)
		try payload.set(magRatio, at: 20)
		try payload.set(haglRatio, at: 24)
		try payload.set(tasRatio, at: 28)
		try payload.set(posHorizAccuracy, at: 32)
		try payload.set(posVertAccuracy, at: 36)
		try payload.set(flags, at: 40)
        return payload
    }
}
