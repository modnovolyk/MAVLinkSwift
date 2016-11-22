#!/bin/sh

rm -rf ../../Cmavlink
cp -rf ../Tests/MAVLinkTests/Cmavlink ../../Cmavlink
cd ../../Cmavlink
git init
git add .
git commit -m "Initial Commit"
git tag 1.0.0