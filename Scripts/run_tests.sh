#!/bin/sh

# Prepares MAVLink C implementation Clang module and runs MAVLink Swift Library tests
# Author: Max Odnovolyk
#
# Usage:
# cd Scripts
# ./run_tests.sh

set -e

SCRIPT_PATH=$(dirname "$0")
SCRIPT_PATH=$(cd "$SCRIPT_PATH" && pwd)

SWIFT_PACKAGE_PATH=$SCRIPT_PATH/../
SWIFT_PACKAGE_FILE=$SWIFT_PACKAGE_PATH/Package.swift
SWIFT_BACKUP_PACKAGE_FILE=$SWIFT_PACKAGE_PATH/Package.backup.swift
SWIFT_TEST_PACKAGE_FILE=$SWIFT_PACKAGE_PATH/Package.test.swift
CSOURCES_PATH=$SCRIPT_PATH/../Tests/MAVLinkTests/Cmavlink

CLANG_MODULE_PATH=$SCRIPT_PATH/../../Cmavlink
trap 'rm -rf "$CLANG_MODULE_PATH"' EXIT

# Backup original Package.swift file and replace with Package.test.swift
# which includes test dependencies.
cp -n "$SWIFT_PACKAGE_FILE" "$SWIFT_BACKUP_PACKAGE_FILE"
cp -f "$SWIFT_TEST_PACKAGE_FILE" "$SWIFT_PACKAGE_FILE"

rm -rf "$CLANG_MODULE_PATH"
cp -rf "$CSOURCES_PATH" "$CLANG_MODULE_PATH"
git -C "$CLANG_MODULE_PATH" init
git -C "$CLANG_MODULE_PATH" add .
git -C "$CLANG_MODULE_PATH" commit -m "Initial Commit"
git -C "$CLANG_MODULE_PATH" tag 1.0.0

(cd "$SWIFT_PACKAGE_PATH" && swift test)

rm -rf "$CLANG_MODULE_PATH"

# Restore original Package.swift file
cp -f "$SWIFT_BACKUP_PACKAGE_FILE" "$SWIFT_PACKAGE_FILE"
rm -f "$SWIFT_BACKUP_PACKAGE_FILE"