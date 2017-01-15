//
//  Delegate.swift
//  MAVLink Protocol Swift Library
//
//  Created by Max Odnovolyk on 10/28/16
//  Copyright (c) 2016 Max Odnovolyk
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation
import MAVLink

class Delegate {
    typealias DidReceiveHandler = (Packet, Channel, MAVLink) -> Void
    typealias DidFailToReceiveHandler = (Packet?, MAVLinkError, Channel, MAVLink) -> Void
    typealias DidParseHandler = (Message, Packet, Channel, MAVLink) -> Void
    typealias DidFailToParseMessageHandler = (Packet, MAVLinkError, Channel, MAVLink) -> Void
    typealias DidFinalizeHandler = (Message, Packet, Data, Channel, MAVLink) -> Void
    
    var didReceive: DidReceiveHandler?
    var didFailToReceive: DidFailToReceiveHandler?
    var didParse: DidParseHandler?
    var didFailToParseMessage: DidFailToParseMessageHandler?
    var didFinalize: DidFinalizeHandler?
    
    init(didReceive: DidReceiveHandler? = nil, didFailToReceive: DidFailToReceiveHandler? = nil, didParse: DidParseHandler? = nil, didFailToParseMessage: DidFailToParseMessageHandler? = nil, didFinalize: DidFinalizeHandler? = nil) {
        self.didReceive = didReceive
        self.didFailToReceive = didFailToReceive
        self.didParse = didParse
        self.didFailToParseMessage = didFailToParseMessage
        self.didFinalize = didFinalize
    }
}

extension Delegate: MAVLinkDelegate {
    func didReceive(packet: Packet, on channel: Channel, via link: MAVLink) {
        didReceive?(packet, channel, link)
    }
    
    func didFailToReceive(packet: Packet?, with error: MAVLinkError, on channel: Channel, via link: MAVLink) {
        didFailToReceive?(packet, error, channel, link)
    }
    
    func didParse(message: Message, from packet: Packet, on channel: Channel, via link: MAVLink) {
        didParse?(message, packet, channel, link)
    }
    
    func didFailToParseMessage(from packet: Packet, with error: MAVLinkError, on channel: Channel, via link: MAVLink) {
        didFailToParseMessage?(packet, error, channel, link)
    }
    
    func didFinalize(message: Message, from packet: Packet, to data: Data, on channel: Channel, in link: MAVLink) {
        didFinalize?(message, packet, data, channel, link)
    }
}
