<img src="https://cloud.githubusercontent.com/assets/4676904/21623540/8c32784e-d20b-11e6-8b1a-1038150609cf.png" width="28" height="35"> MAVLink Communication in Swift
====================================== 
> MAVLink is a lightweight message marshalling library for micro air vehicles (drones).

[![Build Status](https://travis-ci.org/modnovolyk/MAVLinkSwift.svg?branch=master)](https://travis-ci.org/modnovolyk/MAVLinkSwift) ![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg) [![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://swift.org/package-manager/)

This library allows to decode and encode MAVLink Messages into/from specially auto-generated Swift structs and enums according to specific MAVLink XML definition file. It was built from the ground up in Swift utilizing type safety, generics, throwing and other language features to make library more reliable.

MAVLink Communication Protocol is used on the PX4, PIXHAWK, APM and Parrot AR.Drone platforms and serves there as communication backbone for the MCU/IMU communication as well as for Linux interprocess and ground link communication.

Check Official Website for more details: [http://mavlink.org](http://mavlink.org).

## Features

- [x] Swift 3.0 Implementation
- [x] Message Decoding and Encoding Support
- [x] Payload Length and CRC Extra Checks
- [x] Strongly Typed Messages and Enums
- [x] Precise Parsing Error Reporting
- [x] Rich Metadata Information
- [x] Inline Documentation

## Requirements

- Swift 3.0.1
- Python 2.7+

## Generating Platform-specific Source Files

 `Scripts` folder contains `update_swiftlib.sh` script which allows you to update MAVLink Swift Library Messages and Enums from custom platform-specific XML definition file or ArduPilot's Git tag using the latest version of `mavgen_swift.py` script available at [modnovolyk/pymavlink/tree/swift3](https://github.com/modnovolyk/pymavlink/tree/swift3).

Usage:

```shell
$ ./Scripts/update_swiftlib.sh master ./
```
updates `./` directory  with generated MAVLink Library code for `ardupilotmega.xml` version specified in ArduPilot's master `HEAD` (compatible with the latest master's version of ArduPilot, probably beta or alpha). Puts generated Swift code in Package's Sources subdirectory (`./Sources/`) and C headers into `./Tests/MAVLinkTests/Cmavlink/CSources/` for testing purposes.

Another usage sample:

```shell
$ cd Scripts
$ ./update_swiftlib.sh Copter-3.4.0
```
you can skip output directory argument, in this case script uses `../` directory as a generated Swift Package path, assuming that it was launched from `Scripts` directory.

## Installation

MAVLink Swift Library doesn't contain any external dependencies.

#### Manually
1. Download all files from `Sources` subfolder
2. Drop downloaded files into your project
3. Congratulations!  

#### Swift Package Manager
You can use Swift Package Manager to install MAVLink Swift Library by adding it to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "GCS",
    dependencies: [.Package(url: "https://github.com/modnovolyk/MAVLinkSwift", majorVersion: 0)]
)
```

```
$ swift build
```

Tested with swift build --version: 3.0.2 (swiftpm-11750)

## Usage Example

```swift
import Foundation
import MAVLink

let data = Data(bytes: [0xFE, 0x1C, 0x00, 0x01, 0x01, 0x1E, 0x7E, 0x19, 0x01, 0x00, 0x64, 0x6A, 0x8E, 0xBD, 0xB2, 0x0D, 0xDF, 0x3C, 0x5B, 0xD7, 0x8E, 0x3F, 0xEA, 0xC2, 0xAA, 0xBC, 0x56, 0x96, 0x15, 0x3C, 0x51, 0x30, 0xDA, 0x3A, 0x12, 0xAB])

let mavLink = MAVLink()

mavLink.parse(data: data, channel: 0) { message, _ in
    print(message.debugDescription)
}
```

Output:

```
ATTITUDE: The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right).
Fields:
	timeBootMs = 72062 : Timestamp (milliseconds since system boot)
	roll = -0.0695389 : Roll angle (rad, -pi..+pi)
	pitch = 0.0272282 : Pitch angle (rad, -pi..+pi)
	yaw = 1.11595 : Yaw angle (rad, -pi..+pi)
	rollspeed = -0.0208449 : Roll angular speed (rad/s)
	pitchspeed = 0.00913008 : Pitch angular speed (rad/s)
	yawspeed = 0.00166465 : Yaw angular speed (rad/s)
```

## License

Generated MAVLink v1.0 Protocol Library for Swift is distributed under the MIT license. See LICENSE for details.
Pymavlink (generator) is released under the GNU Lesser General Public License v3 or later.
