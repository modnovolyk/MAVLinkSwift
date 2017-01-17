//
//  MAVLink.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Common protocol for all MAVLink entities which describes types
/// metadata properties.
public protocol MAVLinkEntity: CustomStringConvertible, CustomDebugStringConvertible {
    
    /// Original MAVLink enum name (from declarations xml)
    static var typeName: String { get }
    
    /// Compact type description
    static var typeDescription: String { get }
    
    /// Verbose type description
    static var typeDebugDescription: String { get }
}

// MARK: - Enumeration protocol

/// Enumeration protocol description with common for all MAVLink enums
/// properties requirements.
public protocol Enumeration: RawRepresentable, Equatable, MAVLinkEntity {
    
    /// Array with all members of current enum
    static var allMembers: [Self] { get }
    
    // Array with `Name` - `Description` tuples (values from declarations xml file)
    static var membersDescriptions: [(String, String)] { get }
    
    /// `ENUM_END` flag for checking if enum case value is valid
    static var enumEnd: UInt { get }
    
    /// Original MAVLinks enum member name (as declared in definition's xml file)
    var memberName: String { get }
    
    /// Specific member description from definitions xml
    var memberDescription: String { get }
}

/// Enumeration protocol default behaviour implementation.
extension Enumeration {
    public static var typeDebugDescription: String {
        let cases = allMembers.map({ $0.debugDescription }).joined(separator: "\\n\\t")
        return "Enum \(typeName): \(typeDescription)\\nMembers:\\n\\t\(cases)"
    }
    
    public var description: String {
        return memberName
    }
    
    public var debugDescription: String {
        return "\(memberName): \(memberDescription)"
    }
    
    public var memberName: String {
        return Self.membersDescriptions[Self.allMembers.index(of: self)!].0
    }
    
    public var memberDescription: String {
        return Self.membersDescriptions[Self.allMembers.index(of: self)!].1
    }
}

// MARK: - Message protocol

/// Message field definition tuple.
public typealias FieldDefinition = (name: String, offset: Int, type: String, length: UInt, description: String)

/// Message protocol describes all common MAVLink messages properties and
/// methods requirements.
public protocol Message: MAVLinkEntity {
    static var id: UInt8 { get }
    
    static var payloadLength: UInt8 { get }
    
    /// Array of tuples with field definition info
    static var fieldDefinitions: [FieldDefinition] { get }
    
    /// All field's names and values of current Message
    var allFields: [(String, Any)] { get }
    
    /// Initialize Message from received data.
    ///
    /// - parameter data: Data to decode.
    ///
    /// - throws: Throws `ParseError` or `ParseEnumError` if any parsing errors
    /// occur.
    init(data: Data) throws
    
    /// Returns `Data` representation of current `Message` struct guided
    /// by format from `fieldDefinitions`.
    ///
    /// - throws: Throws `PackError` if any of message fields do not comply
    /// format from `fieldDefinitions`.
    ///
    /// - returns: Receiver's `Data` representation
    func pack() throws -> Data
}

/// Message protocol default behaviour implementation.
extension Message {
    public static var payloadLength: UInt8 {
        return messageLengths[id] ?? Packet.Constant.maxPayloadLength
    }
    
    public static var typeDebugDescription: String {
        let fields = fieldDefinitions.map({ "\($0.name): \($0.type): \($0.description)" }).joined(separator: "\n\t")
        return "Struct \(typeName): \(typeDescription)\nFields:\n\t\(fields)"
    }
    
    public var description: String {
        let describeField: ((String, Any)) -> String = { (name, value) in
            let valueString = value is String ? "\"\(value)\"" : value
            return "\(name): \(valueString)"
        }
        let fieldsDescription = allFields.map(describeField).joined(separator: ", ")
        return "\(type(of: self))(\(fieldsDescription))"
    }
    
    public var debugDescription: String {
        let describeFieldVerbose: ((String, Any)) -> String = { (name, value) in
            let valueString = value is String ? "\"\(value)\"" : value
            let (_, _, _, _, description) = Self.fieldDefinitions.filter { $0.name == name }.first!
            return "\(name) = \(valueString) : \(description)"
        }
        let fieldsDescription = allFields.map(describeFieldVerbose).joined(separator: "\n\t")
        return "\(Self.typeName): \(Self.typeDescription)\nFields:\n\t\(fieldsDescription)"
    }
    
    public var allFields: [(String, Any)] {
        var result: [(String, Any)] = []
        let mirror = Mirror(reflecting: self)
        for case let (label?, value) in mirror.children {
            result.append((label, value))
        }
        return result
    }
}

// MARK: - Type aliases

public typealias Channel = UInt8

// MARK: - Errors

public protocol MAVLinkError: Error, CustomStringConvertible, CustomDebugStringConvertible { }

// MARK: Parsing error enumeration

/// Parsing errors
public enum ParseError: MAVLinkError {
    
    /// Size of expected number is larger than receiver's data length.
    /// - offset:     Expected number offset in received data.
    /// - size:       Expected number size in bytes.
    /// - upperBound: The number of bytes in the data.
    case valueSizeOutOfBounds(offset: Int, size: Int, upperBound: Int)
    
    /// Data contains non ASCII characters.
    /// - offset: String offset in received data.
    /// - length: Expected length of string to read.
    case invalidStringEncoding(offset: Int, length: Int)
    
    /// Length check of payload for known `messageId` did fail.
    /// - messageId:      Id of expected `Message` type.
    /// - receivedLength: Received payload length.
    /// - properLength:   Expected payload length for `Message` type.
    case invalidPayloadLength(messageId: UInt8, receivedLength: UInt8, expectedLength: UInt8)
    
    /// Received `messageId` was not recognized so we can't create appropriate
    /// `Message`.
    /// - messageId: Id of the message that was not found in the known message
    /// list (`messageIdToClass` array).
    case unknownMessageId(messageId: UInt8)
    
    /// Checksum check failed. Message id is known but calculated CRC bytes
    /// do not match received CRC value.
    /// - messageId: Id of expected `Message` type.
    case badCRC(messageId: UInt8)
}

extension ParseError {
    
    /// Textual representation used when written to output stream.
    public var description: String {
        switch self {
        case .valueSizeOutOfBounds:
            return "ParseError.valueSizeOutOfBounds"
        case .invalidStringEncoding:
            return "ParseError.invalidStringEncoding"
        case .invalidPayloadLength:
            return "ParseError.invalidPayloadLength"
        case .unknownMessageId:
            return "ParseError.unknownMessageId"
        case .badCRC:
            return "ParseError.badCRC"
        }
    }
    
    /// Debug textual representation used when written to output stream, which
    /// includes all associated values and their labels.
    public var debugDescription: String {
        switch self {
        case let .valueSizeOutOfBounds(offset, size, upperBound):
            return "ParseError.valueSizeOutOfBounds(offset: \(offset), size: \(size), upperBound: \(upperBound))"
        case let .invalidStringEncoding(offset, length):
            return "ParseError.invalidStringEncoding(offset: \(offset), length: \(length))"
        case let .invalidPayloadLength(messageId, receivedLength, expectedLength):
            return "ParseError.invalidPayloadLength(messageId: \(messageId), receivedLength: \(receivedLength), expectedLength: \(expectedLength))"
        case let .unknownMessageId(messageId):
            return "ParseError.unknownMessageId(messageId: \(messageId))"
        case let .badCRC(messageId):
            return "ParseError.badCRC(messageId: \(messageId))"
        }
    }
}

// MARK: Parsing enumeration error

/// Special error type for returning Enum parsing errors with details in associated
/// values (types of these values are not compatible with `ParseError` enum).
public enum ParseEnumError<T: RawRepresentable>: MAVLinkError {
    
    /// Enumeration case with `rawValue` at `valueOffset` was not found in
    /// `enumType` enumeration.
    /// - enumType: Type of expected enumeration.
    /// - rawValue: Raw value that was not found in `enumType`.
    /// - valueOffset: Value offset in received payload data.
    case unknownValue(enumType: T.Type, rawValue: T.RawValue, valueOffset: Int)
}

extension ParseEnumError {
    
    /// Textual representation used when written to the output stream.
    public var description: String {
        switch self {
        case .unknownValue:
            return "ParseEnumError.unknownValue"
        }
    }
    
    /// Debug textual representation used when written to the output stream, which
    /// includes all associated values and their labels.
    public var debugDescription: String {
        switch self {
        case let .unknownValue(enumType, rawValue, valueOffset):
            return "ParseEnumError.unknownValue(enumType: \(enumType), rawValue: \(rawValue), valueOffset: \(valueOffset))"
        }
    }
}

// MARK: Packing errors

/// Errors that can occur while packing `Message` for sending.
public enum PackError: MAVLinkError {
    
    /// Size of received value (together with offset) is out of receiver's length.
    /// - offset:     Expected value offset in payload.
    /// - size:       Provided field value size in bytes.
    /// - upperBound: Available payload length.
    case valueSizeOutOfBounds(offset: Int, size: Int, upperBound: Int)
    
    /// Length check for provided field value did fail.
    /// - offset:              Expected value offset in payload.
    /// - providedValueLength: Count of elements (characters) in provided value.
    /// - allowedLength:       Maximum number of elements (characters) allowed in field.
    case invalidValueLength(offset: Int, providedValueLength: Int, allowedLength: Int)
    
    /// String field contains non ASCII characters.
    /// - offset: Expected value offset in payload.
    /// - string: Original string.
    case invalidStringEncoding(offset: Int, string: String)
    
    /// CRC extra byte not found for provided `messageId` type.
    /// - messageId: Id of message type.
    case crcExtraNotFound(messageId: UInt8)
    
    /// Packet finalization process failed due to `message` absence.
    case messageNotSet
}

extension PackError {
    
    /// Textual representation used when written to the output stream.
    public var description: String {
        switch self {
        case .valueSizeOutOfBounds:
            return "PackError.valueSizeOutOfBounds"
        case .invalidValueLength:
            return "PackError.invalidValueLength"
        case .invalidStringEncoding:
            return "PackError.invalidStringEncoding"
        case .crcExtraNotFound:
            return "PackError.crcExtraNotFound"
        case .messageNotSet:
            return "PackError.messageNotSet"
        }
    }
    
    /// Debug textual representation used when written to the output stream, which
    /// includes all associated values and their labels.
    public var debugDescription: String {
        switch self {
        case let .valueSizeOutOfBounds(offset, size, upperBound):
            return "PackError.valueSizeOutOfBounds(offset: \(offset), size: \(size), upperBound: \(upperBound))"
        case let .invalidValueLength(offset, providedValueLength, allowedLength):
            return "PackError.invalidValueLength(offset: \(offset), providedValueLength: \(providedValueLength), allowedLength: \(allowedLength))"
        case let .invalidStringEncoding(offset, string):
            return "PackError.invalidStringEncoding(offset: \(offset), string: \(string))"
        case let .crcExtraNotFound(messageId):
            return "PackError.crcExtraNotFound(messageId: \(messageId))"
        case .messageNotSet:
            return "PackError.messageNotSet"
        }
    }
}

// MARK: - Delegate protocol

/// Alternative way to receive parsed Messages, finalized packet's data and all
/// errors is to implement this protocol and set as `MAVLink`'s delegate.
public protocol MAVLinkDelegate: class {
    
    /// Called when MAVLink packet is successfully received, payload length
    /// and CRC checks are passed.
    ///
    /// - parameter packet:  Completely received `Packet`.
    /// - parameter channel: Channel on which `packet` was received.
    /// - parameter link:    `MAVLink` object that handled `packet`.
    func didReceive(packet: Packet, on channel: Channel, via link: MAVLink)
    
    /// Packet receiving failed due to `InvalidPayloadLength` or `BadCRC` error.
    ///
    /// - parameter packet:    Partially received `Packet`.
    /// - parameter error:     Error that  occurred while receiving `data`
    /// (`InvalidPayloadLength` or `BadCRC` error).
    /// - parameter channel:   Channel on which `packet` was received.
    /// - parameter link:      `MAVLink` object that received `data`.
    func didFailToReceive(packet: Packet?, with error: MAVLinkError, on channel: Channel, via link: MAVLink)
    
    /// Called when received data was successfully parsed into appropriate
    /// `message` structure.
    ///
    /// - parameter message: Successfully parsed `Message`.
    /// - parameter packet:  Completely received `Packet`.
    /// - parameter channel: Channel on which `message` was received.
    /// - parameter link:    `MAVLink` object that handled `packet`.
    func didParse(message: Message, from packet: Packet, on channel: Channel, via link: MAVLink)
    
    /// Called when `packet` completely received but `MAVLink` was not able to
    /// finish `Message` processing due to unknown `messageId` or type validation
    /// errors.
    ///
    /// - parameter packet:  Completely received `Packet`.
    /// - parameter error:   Error that  occurred while parsing `packet`'s
    /// payload into `Message`.
    /// - parameter channel: Channel on which `message` was received.
    /// - parameter link:    `MAVLink` object that handled `packet`.
    func didFailToParseMessage(from packet: Packet, with error: MAVLinkError, on channel: Channel, via link: MAVLink)
    
    /// Called when message is finalized and ready for sending to aircraft.
    ///
    /// - parameter message: Message to be sent.
    /// - parameter data:    Compiled data that represents `message`.
    /// - parameter channel: Channel on which `message` should be sent.
    /// - parameter link:    `MAVLink` object that handled `message`.
    func didFinalize(message: Message, from packet: Packet, to data: Data, on channel: Channel, in link: MAVLink)
}

// MARK: - Classes implementations

/// Main MAVLink class, performs `Packet` receiving, recognition, validation,
/// `Message` structure creation and `Message` packing, finalizing for sending.
/// Also returns errors through delegation if any errors occurred.
/// - warning: Supports only 1.0 version of the MAVlink wire protocol.
public class MAVLink {
    
    /// States for the parsing state machine.
    enum ParseState {
        case uninit
        case idle
        case gotStx
        case gotSequence
        case gotLength
        case gotSystemId
        case gotComponentId
        case gotMessageId
        case gotPayload
        case gotCRC1
        case gotBadCRC1
    }
    
    enum Framing: UInt8 {
        case incomplete = 0
        case ok = 1
        case badCRC = 2
    }
    
    /// Storage for MAVLink parsed packets count, states and errors statistics.
    class Status {
        
        /// Number of received packets
        var packetReceived: Framing = .incomplete
        
        /// Number of parse errors
        var parseError: UInt8 = 0
        
        /// Parsing state machine
        var parseState: ParseState = .uninit
        
        /// Sequence number of the last received packet
        var currentRxSeq: UInt8 = 0
        
        /// Sequence number of the last sent packet
        var currentTxSeq: UInt8 = 0
        
        /// Received packets
        var packetRxSuccessCount: UInt16 = 0
        
        /// Number of packet drops
        var packetRxDropCount: UInt16 = 0
    }
    
    /// MAVLink Packets and States buffers
    let channelBuffers = (0 ..< Channel.max).map({ _ in Packet() })
    let channelStatuses = (0 ..< Channel.max).map({ _ in Status() })
    
    /// Object to pass received packets, messages, errors, finalized data to.
    public weak var delegate: MAVLinkDelegate?
    
    /// Enable this option to check the length of each message. This allows
    /// invalid messages to be caught much sooner. Use it if the transmission
    /// medium is prone to missing (or extra) characters (e.g. a radio that
    /// fades in and out). Use only if the channel will contain message
    /// types listed in the headers.
    public var checkMessageLength = true
    
    /// Use one extra CRC that is added to the message CRC to detect mismatches
    /// in the message specifications. This is to prevent that two devices using
    /// different message versions incorrectly decode a message with the same
    /// length. Defined as `let` as we support only the latest version (1.0) of
    /// the MAVLink wire protocol.
    public let crcExtra = true
    
    public init() { }
    
    /// This is a convenience function which handles the complete MAVLink
    /// parsing. The function will parse one byte at a time and return the
    /// complete packet once it could be successfully decoded. Checksum and
    /// other failures will be delegated to `delegate`.
    ///
    /// - parameter char:    The char to parse.
    /// - parameter channel: Id of the current channel. This allows to parse
    /// different channels with this function. A channel is not a physical
    /// message channel like a serial port, but a logic partition of the
    /// communication streams in this case.
    ///
    /// - returns: Returns `nil` if packet could be decoded at the moment,
    /// the `Packet` structure else.
    public func parse(char: UInt8, channel: Channel) -> Packet? {
        
        /// Function to check if current char is Stx byte. If current char is
        /// STX, modifies current rxpack and status.
        func handleSTX(char: UInt8, rxpack: Packet, status: Status) {
            if char == Packet.Constant.packetStx {
                rxpack.length = 0
                rxpack.channel = channel
                rxpack.magic = char
                rxpack.checksum.start()
                status.parseState = .gotStx
            }
        }
        
        let rxpack = channelBuffers[Int(channel)]
        let status = channelStatuses[Int(channel)]
        
        status.packetReceived = .incomplete
        
        switch status.parseState {
        case .uninit, .idle:
            handleSTX(char: char, rxpack: rxpack, status: status)
            
        case .gotStx:
            rxpack.length = char
            rxpack.payload.count = 0
            rxpack.checksum.accumulate(char)
            status.parseState = .gotLength
            
        case .gotLength:
            rxpack.sequence = char
            rxpack.checksum.accumulate(char)
            status.parseState = .gotSequence
            
        case .gotSequence:
            rxpack.systemId = char
            rxpack.checksum.accumulate(char)
            status.parseState = .gotSystemId
            
        case .gotSystemId:
            rxpack.componentId = char
            rxpack.checksum.accumulate(char)
            status.parseState = .gotComponentId
            
        case .gotComponentId:
            // Check Message length if `checkMessageLength` enabled and
            // `messageLengths` contains proper id. If `messageLengths` does not
            // contain info for current messageId, parsing will fail later on CRC check.
            if checkMessageLength {
                let messageLength = messageLengths[char] ?? 0
                if rxpack.length != messageLength {
                    status.parseError += 1
                    status.parseState = .idle
                    let error = ParseError.invalidPayloadLength(messageId: char, receivedLength: rxpack.length, expectedLength: messageLength)
                    delegate?.didFailToReceive(packet: nil, with: error, on: channel, via: self)
                    break
                }
            }
            
            rxpack.messageId = char
            rxpack.checksum.accumulate(char)
            
            if rxpack.length == 0 {
                status.parseState = .gotPayload
            } else {
                status.parseState = .gotMessageId
            }
            
        case .gotMessageId:
            rxpack.payload.append(char)
            rxpack.checksum.accumulate(char)
            
            if rxpack.payload.count == Int(rxpack.length) {
                status.parseState = .gotPayload
            }
            
        case .gotPayload:
            if crcExtra && (messageCRCsExtra[rxpack.messageId] != nil) {
                rxpack.checksum.accumulate(messageCRCsExtra[rxpack.messageId]!)
            }
            
            rxpack.payload.append(char)
            
            if char != rxpack.checksum.lowByte {
                status.parseState = .gotBadCRC1
                fallthrough
            } else {
                status.parseState = .gotCRC1
            }
            
        case .gotCRC1, .gotBadCRC1:
            if (status.parseState == .gotBadCRC1) || (char != rxpack.checksum.highByte) {
                status.parseError += 1
                status.packetReceived = .badCRC
                
                let error = messageIdToClass[rxpack.messageId] == nil ? ParseError.unknownMessageId(messageId: rxpack.messageId) : ParseError.badCRC(messageId: rxpack.messageId)
                delegate?.didFailToReceive(packet: Packet(packet: rxpack), with: error, on: channel, via: self)
                handleSTX(char: char, rxpack: rxpack, status: status)
            } else {
                // Successfully got message
                rxpack.payload.append(char)
                status.packetReceived = .ok
            }
            status.parseState = .idle
        }
        
        defer {
            // Сollect stat here
            
            status.parseError = 0
        }
        
        // If a packet has been sucessfully received
        guard status.packetReceived == .ok else {
            return nil
        }
        
        // Copy and delegate received packet
        let packet = Packet(packet: rxpack)
        delegate?.didReceive(packet: packet, on: channel, via: self)
        
        status.currentRxSeq = rxpack.sequence
        // Initial condition: If no packet has been received so far, drop count is undefined
        if status.packetRxSuccessCount == 0 {
            status.packetRxDropCount = 0
        }
        // Count this packet as received
        status.packetRxSuccessCount = status.packetRxSuccessCount &+ 1
        
        // Try to create appropriate Message structure, delegate results
        guard let messageClass = messageIdToClass[packet.messageId] else {
            let error = ParseError.unknownMessageId(messageId: rxpack.messageId)
            delegate?.didFailToParseMessage(from: packet, with: error, on: channel, via: self)
            return packet
        }
        
        do {
            packet.message = try messageClass.init(data: rxpack.payload)
            delegate?.didParse(message: packet.message!, from: packet, on: channel, via: self)
        } catch {
            delegate?.didFailToParseMessage(from: packet, with: error as! MAVLinkError, on: channel, via: self)
            return packet
        }
        
        return packet
    }
    
    /// Parse new portion of data, then call `messageHandler` if new message
    /// is available.
    ///
    /// - parameter data:           Data to be parsed.
    /// - parameter channel:        Id of the current channel. This allows to
    /// parse different channels with this function. A channel is not a physical
    /// message channel like a serial port, but a logic partition of the
    /// communication streams in this case.
    /// - parameter messageHandler: The message handler to call when the
    /// provided data is enough to complete message parsing. Unless you have
    /// provided a custom delegate, this parameter must not be `nil`, because
    /// there is no other way to retrieve the parsed message and packet.
    public func parse(data: Data, channel: Channel, messageHandler: ((Message, Packet) -> Void)? = nil) {
        data.forEach { byte in
            if let packet = parse(char: byte, channel: channel), let message = packet.message, let messageHandler = messageHandler {
                messageHandler(message, packet)
            }
        }
    }
    
    /// Prepare `message` bytes for sending, pass to `delegate` for further
    /// processing and increase sequence counter.
    ///
    /// - parameter message:     Message to be compiled into bytes and sent.
    /// - parameter systemId:    Id of the sending (this) system.
    /// - parameter componentId: Id of the sending component.
    /// - parameter channel:     Id of the current channel.
    ///
    /// - throws: Throws `PackError`.
    public func dispatch(message: Message, systemId: UInt8, componentId: UInt8, channel: Channel) throws {
        let channelStatus = channelStatuses[Int(channel)]
        let packet = Packet(message: message, systemId: systemId, componentId: componentId, channel: channel)
        let data = try packet.finalize(sequence: channelStatus.currentTxSeq)
        delegate?.didFinalize(message: message, from: packet, to: data, on: channel, in: self)
        channelStatus.currentTxSeq = channelStatus.currentTxSeq &+ 1
    }
}

/// MAVLink Packet structure to store received data that is not full message yet.
/// Contains additional to Message info like channel, system id, component id
/// and raw payload data, etc. Also used to store and transfer received data of
/// unknown or corrupted Messages.
/// [More details](http://qgroundcontrol.org/mavlink/start).
public class Packet {
    
    /// MAVlink Packet constants
    struct Constant {
        
        /// Maximum packets payload length
        static let maxPayloadLength = UInt8.max
        
        static let numberOfChecksumBytes = 2
        
        /// Length of core header (of the comm. layer): message length
        /// (1 byte) + message sequence (1 byte) + message system id (1 byte) +
        /// message component id (1 byte) + message type id (1 byte).
        static let coreHeaderLength = 5
        
        /// Length of all header bytes, including core and checksum
        static let numberOfHeaderBytes = Constant.numberOfChecksumBytes + Constant.coreHeaderLength + 1
        
        /// Packet start sign. Indicates the start of a new packet. v1.0.
        static let packetStx: UInt8 = 0xFE
    }
    
    /// Channel on which packet was received
    public internal(set) var channel: UInt8 = 0
    
    /// Sent at the end of packet
    public internal(set) var checksum = Checksum()
    
    /// Protocol magic marker (PacketStx value)
    public internal(set) var magic: UInt8 = 0
    
    /// Length of payload
    public internal(set) var length: UInt8 = 0
    
    /// Sequence of packet
    public internal(set) var sequence: UInt8 = 0
    
    /// Id of message sender system/aircraft
    public internal(set) var systemId: UInt8 = 0
    
    /// Id of the message sender component
    public internal(set) var componentId: UInt8 = 0
    
    /// Id of message type in payload
    public internal(set) var messageId: UInt8 = 0
    
    /// Message bytes
    public internal(set) var payload = Data(capacity: Int(Constant.maxPayloadLength) + Constant.numberOfChecksumBytes)
    
    /// Received Message structure if available
    public internal(set) var message: Message?
    
    /// Initialize copy of provided Packet.
    ///
    /// - parameter packet: Packet to copy
    init(packet: Packet) {
        channel = packet.channel
        checksum = packet.checksum
        magic = packet.magic
        length = packet.length
        sequence = packet.sequence
        systemId = packet.systemId
        componentId = packet.componentId
        messageId = packet.messageId
        payload = packet.payload
        message = packet.message
    }
    
    /// Initialize packet with provided `message` for sending.
    ///
    /// - parameter message:     Message to send.
    /// - parameter systemId:    Id of the sending (this) system.
    /// - parameter componentId: Id of the sending component.
    /// - parameter channel:     Id of the current channel.
    init(message: Message, systemId: UInt8, componentId: UInt8, channel: Channel) {
        self.magic = Constant.packetStx
        self.systemId = systemId
        self.componentId = componentId
        self.messageId = type(of: message).id
        self.length = type(of: message).payloadLength
        self.message = message
        self.channel = channel
    }
    
    init() { }
    
    /// Finalize a MAVLink packet with sequence assignment. Returns data that
    /// could be sent to the aircraft. This function calculates the checksum and
    /// sets length and aircraft id correctly. It assumes that the packet is
    /// already correctly initialized with appropriate `message`, `length`,
    /// `systemId`, `componentId`.
    /// Could be used to send packets without `MAVLink` object, in this case you
    /// should take care of `sequence` counter manually.
    ///
    /// - parameter sequence: Each channel counts up its send sequence. It allows
    /// to detect packet loss.
    ///
    /// - throws: Throws `PackError`.
    ///
    /// - returns: Data
    public func finalize(sequence: UInt8) throws -> Data {
        guard let message = message else {
            throw PackError.messageNotSet
        }
        
        guard let crcExtra = messageCRCsExtra[messageId] else {
            throw PackError.crcExtraNotFound(messageId: type(of: message).id)
        }
        
        self.sequence = sequence
        
        let coreHeader = [length, sequence, systemId, componentId, messageId]
        let header = [Constant.packetStx] + coreHeader
        let payload = try message.pack()
        
        checksum.start()
        checksum.accumulate(coreHeader)
        checksum.accumulate(payload)
        checksum.accumulate(crcExtra)
        
        let checksumBytes = [checksum.lowByte, checksum.highByte]
        var packetData = Data(capacity: payload.count + Constant.numberOfHeaderBytes)
        packetData.append(header, count: header.count)
        packetData.append(payload)
        packetData.append(checksumBytes, count: checksumBytes.count)
        
        return packetData
    }
}

/// Struct for storing and calculating checksum.
public struct Checksum {
    
    struct Constants {
        static let x25InitCRCValue: UInt16 = 0xFFFF
    }
    
    public var lowByte: UInt8 {
        return UInt8(truncatingBitPattern: value)
    }
    
    public var highByte: UInt8 {
        return UInt8(truncatingBitPattern: value >> 8)
    }
    
    public private(set) var value: UInt16 = 0
    
    init() {
        start()
    }
    
    /// Initialize the buffer for the X.25 CRC.
    mutating func start() {
        value = Constants.x25InitCRCValue
    }
    
    /// Accumulate the X.25 CRC by adding one char at a time. The checksum
    /// function adds the hash of one char at a time to the 16 bit checksum
    /// `value` (`UInt16`).
    ///
    /// - parameter char: New char to hash
    mutating func accumulate(_ char: UInt8) {
        var tmp: UInt8 = char ^ UInt8(truncatingBitPattern: value)
        tmp ^= (tmp << 4)
        value = (UInt16(value) >> 8) ^ (UInt16(tmp) << 8) ^ (UInt16(tmp) << 3) ^ (UInt16(tmp) >> 4)
    }
    
    /// Accumulate the X.25 CRC by adding `buffer` bytes.
    ///
    /// - parameter buffer: Sequence of bytes to hash
    mutating func accumulate<T: Sequence>(_ buffer: T) where T.Iterator.Element == UInt8 {
        buffer.forEach { accumulate($0) }
    }
}

// MARK: - CF independent host system byte order determination

public enum ByteOrder: UInt32 {
    case unknown
    case littleEndian
    case bigEndian
}

public func hostByteOrder() -> ByteOrder {
    var bigAndLittleEndian: UInt32 = (ByteOrder.bigEndian.rawValue << 24) | ByteOrder.littleEndian.rawValue
    
    let firstByte: UInt8 = withUnsafePointer(to: &bigAndLittleEndian) { numberPointer in
        let bufferPointer = numberPointer.withMemoryRebound(to: UInt8.self, capacity: 4) { pointer in
            return UnsafeBufferPointer(start: pointer, count: 4)
        }
        return bufferPointer[0]
    }
    
    return ByteOrder(rawValue: UInt32(firstByte)) ?? .unknown
}

// MARK: - Data extensions

protocol MAVLinkNumber { }

extension UInt8: MAVLinkNumber { }

extension Int8: MAVLinkNumber { }

extension UInt16: MAVLinkNumber { }

extension Int16: MAVLinkNumber { }

extension UInt32: MAVLinkNumber { }

extension Int32: MAVLinkNumber { }

extension UInt64: MAVLinkNumber { }

extension Int64: MAVLinkNumber { }

extension Float: MAVLinkNumber { }

extension Double: MAVLinkNumber { }

/// Methods for getting properly typed field values from received data.
extension Data {
    
    /// Returns number value (integer or floating point) from receiver's data.
    ///
    /// - parameter offset: Offset in receiver's bytes.
    /// - parameter byteOrder: Current system endianness.
    ///
    /// - throws: Throws `ParseError`.
    ///
    /// - returns: Returns `MAVLinkNumber` (UInt8, Int8, UInt16, Int16, UInt32,
    /// Int32, UInt64, Int64, Float, Double).
    func number<T: MAVLinkNumber>(at offset: Data.Index, byteOrder: ByteOrder = hostByteOrder()) throws -> T {
        let size = MemoryLayout<T>.stride
        let range: Range<Int> = offset ..< offset + size
        
        guard range.upperBound <= count else {
            throw ParseError.valueSizeOutOfBounds(offset: offset, size: size, upperBound: count)
        }
        
        var bytes = subdata(in: range)
        if byteOrder != .littleEndian {
            bytes.reverse()
        }
        
        return bytes.withUnsafeBytes { $0.pointee }
    }
    
    /// Returns typed array from receiver's data.
    ///
    /// - parameter offset:   Offset in receiver's bytes.
    /// - parameter capacity: Expected number of elements in array.
    ///
    /// - throws: Throws `ParseError`.
    ///
    /// - returns: `Array<T>`
    func array<T: MAVLinkNumber>(at offset: Data.Index, capacity: Int) throws -> [T] {
        var offset = offset
        var array = [T]()
        
        for _ in 0 ..< capacity {
            array.append(try number(at: offset))
            offset += MemoryLayout<T>.stride
        }
        
        return array
    }
    
    /// Returns ASCII String from receiver's data.
    ///
    /// - parameter offset: Offset in receiver's bytes.
    /// - parameter length: Expected length of string to read.
    ///
    /// - throws: Throws `ParseError`.
    ///
    /// - returns: `String`
    func string(at offset: Data.Index, length: Int) throws -> String {
        let range: Range<Int> = offset ..< offset + length
        
        guard range.upperBound <= count else {
            throw ParseError.valueSizeOutOfBounds(offset: offset, size: length, upperBound: count)
        }
        
        let bytes = subdata(in: range)
        let emptySubSequence = Data.SubSequence(base: Data(), bounds: 0 ..< 0)
        let firstSubSequence = bytes.split(separator: 0x0, maxSplits: 1, omittingEmptySubsequences: false).first ?? emptySubSequence
        
        guard let string = String(bytes: firstSubSequence, encoding: .ascii) else {
            throw ParseError.invalidStringEncoding(offset: offset, length: length)
        }
        
        return string
    }
    
    /// Returns proper typed `Enumeration` subtype value from data or throws
    /// `ParserEnumError` or `ParseError` error.
    ///
    /// - parameter offset: Offset in receiver's bytes.
    ///
    /// - throws: Throws `ParserEnumError`, `ParseError`.
    ///
    /// - returns: Properly typed `Enumeration` subtype value.
    func enumeration<T: Enumeration>(at offset: Data.Index) throws -> T where T.RawValue: MAVLinkNumber {
        let rawValue: T.RawValue = try number(at: offset)
        
        guard let enumerationCase = T(rawValue: rawValue) else {
            throw ParseEnumError.unknownValue(enumType: T.self, rawValue: rawValue, valueOffset: offset)
        }
        
        return enumerationCase
    }
}

/// Methods for filling `Data` with properly formatted field values.
extension Data {
    
    /// Sets properly swapped `number` bytes starting from `offset` in
    /// receiver's bytes.
    ///
    /// - warning: Supports only version 1.0 of MAVLink wire protocol
    /// (little-endian byte order).
    ///
    /// - parameter number: Number value to set.
    /// - parameter offset: Offset in receiver's bytes.
    /// - parameter byteOrder: Current system endianness.
    ///
    /// - throws: Throws `PackError`.
    mutating func set<T: MAVLinkNumber>(_ number: T, at offset: Data.Index, byteOrder: ByteOrder = hostByteOrder()) throws {
        let size = MemoryLayout<T>.stride
        let range = offset ..< offset + size
        
        guard range.endIndex <= count else {
            throw PackError.valueSizeOutOfBounds(offset: offset, size: size, upperBound: count)
        }
        
        var number = number
        var bytes: Data = withUnsafePointer(to: &number) { numberPointer in
            let bufferPointer = numberPointer.withMemoryRebound(to: UInt8.self, capacity: size) { pointer in
                return UnsafeBufferPointer(start: pointer, count: size)
            }
            return Data(bufferPointer)
        }
        
        if byteOrder != .littleEndian {
            bytes.reverse()
        }
        
        replaceSubrange(range, with: bytes)
    }
    
    /// Sets `array` of `MAVLinkNumber` values at `offset` with `capacity` validation.
    ///
    /// - parameter array:    Array of values to set.
    /// - parameter offset:   Offset in receiver's bytes.
    /// - parameter capacity: Maximum allowed count of elements in `array`.
    ///
    /// - throws: Throws `PackError`.
    mutating func set<T: MAVLinkNumber>(_ array: [T], at offset: Data.Index, capacity: Int) throws {
        guard array.count <= capacity else {
            throw PackError.invalidValueLength(offset: offset, providedValueLength: array.count, allowedLength: capacity)
        }
        
        let elementSize = MemoryLayout<T>.stride
        let arraySize = elementSize * array.count
        
        guard offset + arraySize <= count else {
            throw PackError.valueSizeOutOfBounds(offset: offset, size: arraySize, upperBound: count)
        }
        
        for (index, item) in array.enumerated() {
            try set(item, at: offset + index * elementSize)
        }
    }
    
    /// Sets correctly encoded `string` value at `offset` limited to `length` or
    /// throws `PackError`.
    ///
    /// - precondition: `string` value must be ASCII compatible.
    ///
    /// - parameter string: Value to set.
    /// - parameter offset: Offset in receiver's bytes.
    /// - parameter length: Maximum allowed length of `string`.
    ///
    /// - throws: Throws `PackError`.
    mutating func set(_ string: String, at offset: Data.Index, length: Int) throws {
        var bytes = string.data(using: .ascii) ?? Data()
        
        if bytes.isEmpty && string.unicodeScalars.count > 0 {
            throw PackError.invalidStringEncoding(offset: offset, string: string)
        }
        
        // Add optional null-termination if provided string is shorter than
        // expectedlength
        if bytes.count < length {
            bytes.append(0x0)
        }
        
        let asciiCharacters = bytes.withUnsafeBytes { Array(UnsafeBufferPointer<UInt8>(start: $0, count: bytes.count)) }
        try set(asciiCharacters, at: offset, capacity: length)
    }
    
    /// Sets correctly formated `enumeration` raw value at `offset` or throws
    /// `PackError`.
    ///
    /// - parameter enumeration: Value to set.
    /// - parameter offset:      Offset in receiver's bytes.
    ///
    /// - throws: Throws `PackError`.
    mutating func set<T: Enumeration>(_ enumeration: T, at offset: Data.Index) throws where T.RawValue: MAVLinkNumber {
        try set(enumeration.rawValue, at: offset)
    }
}

// MARK: - Additional MAVLink service info

/// Array for mapping message id to proper struct
private let messageIdToClass: [UInt8: Message.Type] = [0: Heartbeat.self, 1: SysStatus.self, 2: SystemTime.self, 4: Ping.self, 5: ChangeOperatorControl.self, 6: ChangeOperatorControlAck.self, 7: AuthKey.self, 11: SetMode.self, 20: ParamRequestRead.self, 21: ParamRequestList.self, 22: ParamValue.self, 23: ParamSet.self, 24: GPSRawInt.self, 25: GPSStatus.self, 26: ScaledIMU.self, 27: RawIMU.self, 28: RawPressure.self, 29: ScaledPressure.self, 30: Attitude.self, 31: AttitudeQuaternion.self, 32: LocalPositionNED.self, 33: GlobalPositionInt.self, 34: RCChannelsScaled.self, 35: RCChannelsRaw.self, 36: ServoOutputRaw.self, 37: MissionRequestPartialList.self, 38: MissionWritePartialList.self, 39: MissionItem.self, 40: MissionRequest.self, 41: MissionSetCurrent.self, 42: MissionCurrent.self, 43: MissionRequestList.self, 44: MissionCount.self, 45: MissionClearAll.self, 46: MissionItemReached.self, 47: MissionAck.self, 48: SetGPSGlobalOrigin.self, 49: GPSGlobalOrigin.self, 50: ParamMapRC.self, 51: MissionRequestInt.self, 54: SafetySetAllowedArea.self, 55: SafetyAllowedArea.self, 61: AttitudeQuaternionCov.self, 62: NavControllerOutput.self, 63: GlobalPositionIntCov.self, 64: LocalPositionNEDCov.self, 65: RCChannels.self, 66: RequestDataStream.self, 67: DataStream.self, 69: ManualControl.self, 70: RCChannelsOverride.self, 73: MissionItemInt.self, 74: VfrHud.self, 75: CommandInt.self, 76: CommandLong.self, 77: CommandAck.self, 81: ManualSetpoint.self, 82: SetAttitudeTarget.self, 83: AttitudeTarget.self, 84: SetPositionTargetLocalNED.self, 85: PositionTargetLocalNED.self, 86: SetPositionTargetGlobalInt.self, 87: PositionTargetGlobalInt.self, 89: LocalPositionNEDSystemGlobalOffset.self, 90: HilState.self, 91: HilControls.self, 92: HilRCInputsRaw.self, 93: HilActuatorControls.self, 100: OpticalFlow.self, 101: GlobalVisionPositionEstimate.self, 102: VisionPositionEstimate.self, 103: VisionSpeedEstimate.self, 104: ViconPositionEstimate.self, 105: HighresIMU.self, 106: OpticalFlowRad.self, 107: HilSensor.self, 108: SimState.self, 109: RadioStatus.self, 110: FileTransferProtocol.self, 111: Timesync.self, 112: CameraTrigger.self, 113: HilGPS.self, 114: HilOpticalFlow.self, 115: HilStateQuaternion.self, 116: ScaledIMU2.self, 117: LogRequestList.self, 118: LogEntry.self, 119: LogRequestData.self, 120: LogData.self, 121: LogErase.self, 122: LogRequestEnd.self, 123: GPSInjectData.self, 124: GPS2Raw.self, 125: PowerStatus.self, 126: SerialControl.self, 127: GPSRTK.self, 128: GPS2RTK.self, 129: ScaledImu3.self, 130: DataTransmissionHandshake.self, 131: EncapsulatedData.self, 132: DistanceSensor.self, 133: TerrainRequest.self, 134: TerrainData.self, 135: TerrainCheck.self, 136: TerrainReport.self, 137: ScaledPressure2.self, 138: AttPosMocap.self, 139: SetActuatorControlTarget.self, 140: ActuatorControlTarget.self, 141: Altitude.self, 142: ResourceRequest.self, 143: ScaledPressure3.self, 144: FollowTarget.self, 146: ControlSystemState.self, 147: BatteryStatus.self, 148: AutopilotVersion.self, 149: LandingTarget.self, 150: SensorOffsets.self, 151: SetMagOffsets.self, 152: Meminfo.self, 153: ApAdc.self, 154: DigicamConfigure.self, 155: DigicamControl.self, 156: MountConfigure.self, 157: MountControl.self, 158: MountStatus.self, 160: FencePoint.self, 161: FenceFetchPoint.self, 162: FenceStatus.self, 163: Ahrs.self, 164: Simstate.self, 165: Hwstatus.self, 166: Radio.self, 167: LimitsStatus.self, 168: Wind.self, 169: Data16.self, 170: Data32.self, 171: Data64.self, 172: Data96.self, 173: Rangefinder.self, 174: AirspeedAutocal.self, 175: RallyPoint.self, 176: RallyFetchPoint.self, 177: CompassmotStatus.self, 178: Ahrs2.self, 179: CameraStatus.self, 180: CameraFeedback.self, 181: Battery2.self, 182: Ahrs3.self, 183: AutopilotVersionRequest.self, 184: RemoteLogDataBlock.self, 185: RemoteLogBlockStatus.self, 186: LedControl.self, 191: MagCalProgress.self, 192: MagCalReport.self, 193: EkfStatusReport.self, 194: PidTuning.self, 200: GimbalReport.self, 201: GimbalControl.self, 214: GimbalTorqueCmdReport.self, 215: GoproHeartbeat.self, 216: GoproGetRequest.self, 217: GoproGetResponse.self, 218: GoproSetRequest.self, 219: GoproSetResponse.self, 226: Rpm.self, 230: EstimatorStatus.self, 231: WindCov.self, 232: GPSInput.self, 233: GPSRtcmData.self, 241: Vibration.self, 242: HomePosition.self, 243: SetHomePosition.self, 244: MessageInterval.self, 245: ExtendedSysState.self, 246: ADSBVehicle.self, 247: Collision.self, 248: V2Extension.self, 249: MemoryVect.self, 250: DebugVect.self, 251: NamedValueFloat.self, 252: NamedValueInt.self, 253: Statustext.self, 254: Debug.self]

/// Message lengths array for known messages length validation
private let messageLengths: [UInt8: UInt8] = [0: 9, 1: 31, 2: 12, 4: 14, 5: 28, 6: 3, 7: 32, 11: 6, 20: 20, 21: 2, 22: 25, 23: 23, 24: 30, 25: 101, 26: 22, 27: 26, 28: 16, 29: 14, 30: 28, 31: 32, 32: 28, 33: 28, 34: 22, 35: 22, 36: 21, 37: 6, 38: 6, 39: 37, 40: 4, 41: 4, 42: 2, 43: 2, 44: 4, 45: 2, 46: 2, 47: 3, 48: 13, 49: 12, 50: 37, 51: 4, 54: 27, 55: 25, 61: 68, 62: 26, 63: 185, 64: 229, 65: 42, 66: 6, 67: 4, 69: 11, 70: 18, 73: 37, 74: 20, 75: 35, 76: 33, 77: 3, 81: 22, 82: 39, 83: 37, 84: 53, 85: 51, 86: 53, 87: 51, 89: 28, 90: 56, 91: 42, 92: 33, 93: 81, 100: 26, 101: 32, 102: 32, 103: 20, 104: 32, 105: 62, 106: 44, 107: 64, 108: 84, 109: 9, 110: 254, 111: 16, 112: 12, 113: 36, 114: 44, 115: 64, 116: 22, 117: 6, 118: 14, 119: 12, 120: 97, 121: 2, 122: 2, 123: 113, 124: 35, 125: 6, 126: 79, 127: 35, 128: 35, 129: 22, 130: 13, 131: 255, 132: 14, 133: 18, 134: 43, 135: 8, 136: 22, 137: 14, 138: 36, 139: 43, 140: 41, 141: 32, 142: 243, 143: 14, 144: 93, 146: 100, 147: 36, 148: 60, 149: 30, 150: 42, 151: 8, 152: 4, 153: 12, 154: 15, 155: 13, 156: 6, 157: 15, 158: 14, 160: 12, 161: 3, 162: 8, 163: 28, 164: 44, 165: 3, 166: 9, 167: 22, 168: 12, 169: 18, 170: 34, 171: 66, 172: 98, 173: 8, 174: 48, 175: 19, 176: 3, 177: 20, 178: 24, 179: 29, 180: 45, 181: 4, 182: 40, 183: 2, 184: 206, 185: 7, 186: 29, 191: 27, 192: 44, 193: 22, 194: 25, 200: 42, 201: 14, 214: 8, 215: 3, 216: 3, 217: 6, 218: 7, 219: 2, 226: 8, 230: 42, 231: 40, 232: 63, 233: 182, 241: 32, 242: 52, 243: 53, 244: 6, 245: 2, 246: 38, 247: 19, 248: 254, 249: 36, 250: 30, 251: 18, 252: 18, 253: 51, 254: 9]

/// Message CRSs extra for detection incompatible XML changes
private let messageCRCsExtra: [UInt8: UInt8] = [0: 50, 1: 124, 2: 137, 4: 237, 5: 217, 6: 104, 7: 119, 11: 89, 20: 214, 21: 159, 22: 220, 23: 168, 24: 24, 25: 23, 26: 170, 27: 144, 28: 67, 29: 115, 30: 39, 31: 246, 32: 185, 33: 104, 34: 237, 35: 244, 36: 222, 37: 212, 38: 9, 39: 254, 40: 230, 41: 28, 42: 28, 43: 132, 44: 221, 45: 232, 46: 11, 47: 153, 48: 41, 49: 39, 50: 78, 51: 196, 54: 15, 55: 3, 61: 153, 62: 183, 63: 51, 64: 59, 65: 118, 66: 148, 67: 21, 69: 243, 70: 124, 73: 38, 74: 20, 75: 158, 76: 152, 77: 143, 81: 106, 82: 49, 83: 22, 84: 143, 85: 140, 86: 5, 87: 150, 89: 231, 90: 183, 91: 63, 92: 54, 93: 47, 100: 175, 101: 102, 102: 158, 103: 208, 104: 56, 105: 93, 106: 138, 107: 108, 108: 32, 109: 185, 110: 84, 111: 34, 112: 174, 113: 124, 114: 237, 115: 4, 116: 76, 117: 128, 118: 56, 119: 116, 120: 134, 121: 237, 122: 203, 123: 250, 124: 87, 125: 203, 126: 220, 127: 25, 128: 226, 129: 46, 130: 29, 131: 223, 132: 85, 133: 6, 134: 229, 135: 203, 136: 1, 137: 195, 138: 109, 139: 168, 140: 181, 141: 47, 142: 72, 143: 131, 144: 127, 146: 103, 147: 154, 148: 178, 149: 200, 150: 134, 151: 219, 152: 208, 153: 188, 154: 84, 155: 22, 156: 19, 157: 21, 158: 134, 160: 78, 161: 68, 162: 189, 163: 127, 164: 154, 165: 21, 166: 21, 167: 144, 168: 1, 169: 234, 170: 73, 171: 181, 172: 22, 173: 83, 174: 167, 175: 138, 176: 234, 177: 240, 178: 47, 179: 189, 180: 52, 181: 174, 182: 229, 183: 85, 184: 159, 185: 186, 186: 72, 191: 92, 192: 36, 193: 71, 194: 98, 200: 134, 201: 205, 214: 69, 215: 101, 216: 50, 217: 202, 218: 17, 219: 162, 226: 207, 230: 163, 231: 105, 232: 151, 233: 35, 241: 90, 242: 104, 243: 85, 244: 95, 245: 130, 246: 184, 247: 81, 248: 8, 249: 204, 250: 49, 251: 170, 252: 44, 253: 83, 254: 46]
