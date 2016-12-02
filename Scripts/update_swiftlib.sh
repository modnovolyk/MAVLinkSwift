#!/bin/sh

# Updates MAVLink Swift Library from custom XML definition file or ArduPilot's specific Git tag
# Author: Max Odnovolyk
#
# Usage:
# ./Scripts/update_swiftlib.sh master ./
# Updates current directory './' with generated MAVLink code for ardupilotmega.xml version
# specified in ArduPilot's master HEAD (compatible with the latest master's version of ArduPilot,
# probably beta or alpha). Puts Swift sources in Package's 'Sources' subdirectory (./Sources/)
# and C headers in './Tests/MAVLinkTests/Cmavlink/CSources/' for testing purposes.
#
# Another usage sample:
# cd Scripts
# ./update_swiftlib.sh Copter-3.4.0
# You can skip output directory, in this case script use '../' directory as a Swift Package path
# assuming that it was launched from 'Scripts' directory.
 
set -e

generate_library() {
    python "$PYMAVLINK_PATH/tools/mavgen.py" \
	--output $3 \
	--lang $1 \
	--wire-protocol 1.0 \
	$2
}

# Paths settings
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

SCRIPT_PATH=$(dirname "$0")
SCRIPT_PATH=$(cd "$SCRIPT_PATH" && pwd)

DEFAULT_SWIFT_PACKAGE_PATH=$SCRIPT_PATH/../
SWIFT_SOURCE_DIR=Sources/
C_SOURCE_DIR=Tests/MAVLinkTests/Cmavlink/CSources/
ARDUPILOT_PATH=$TEMP_DIR/ardupilot
ARDUPILOT_MAVLINK_MODULE=modules/mavlink
MAVLINK_PATH=$ARDUPILOT_PATH/$ARDUPILOT_MAVLINK_MODULE
PYMAVLINK_PATH=$TEMP_DIR/pymavlink

# Git sources settings
ARDUPILOT_GIT=https://github.com/ArduPilot/ardupilot.git
MAVLINK_ARDUPILOT_XML=$MAVLINK_PATH/message_definitions/v1.0/ardupilotmega.xml
PYMAVLINK_GIT=https://github.com/modnovolyk/pymavlink
PYMAVLINK_BRANCH=swift3 

echo "\0033[34mWorking in temp directory $TEMP_DIR\0033[0m"

xml_file_path=$1 

if [ ! -f "$xml_file_path" ]
then
	echo "\0033[33mXML file $xml_file_path does not exists, trying to fetch ArduPilot's specific tag with the same name\0033[0m"
    
    ardupilot_branch=$1
    git clone --branch $ardupilot_branch --depth 1 $ARDUPILOT_GIT "$ARDUPILOT_PATH"
    git -C "$ARDUPILOT_PATH" submodule update --init $ARDUPILOT_MAVLINK_MODULE

	xml_file_path=$MAVLINK_ARDUPILOT_XML
fi

echo "\0033[34mCloning pymavlink from $PYMAVLINK_GIT branch $PYMAVLINK_BRANCH\0033[0m"
git clone --branch $PYMAVLINK_BRANCH --depth 1 $PYMAVLINK_GIT "$PYMAVLINK_PATH"

# Use second script argument as output directory or set to default package path
swift_package_path=$2

if [ -z "$2" ]
then
	swift_package_path=$DEFAULT_SWIFT_PACKAGE_PATH
fi

swift_output_path=$swift_package_path/$SWIFT_SOURCE_DIR
c_output_path=$swift_package_path/$C_SOURCE_DIR

# Generate Swift library and C headers for testing
echo "\0033[34mGenerating Swift files to $swift_output_path\0033[0m"
rm -rf "$swift_output_path"
generate_library "Swift" "$xml_file_path" "$swift_output_path"

echo "\0033[34mGenerating C header files to $c_output_path\0033[0m"
rm -rf "$c_output_path"
generate_library "C" "$xml_file_path" "$c_output_path"

rm -rf "$TEMP_DIR"

echo "\0033[34mMAVLink Swift library updated successfully\0033[0m"
