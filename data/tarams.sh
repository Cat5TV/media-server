#!/bin/bash
# Extract ams current version to ant-media-server and then run this file to break up for github
tar cvzf - ant-media-server/ | split --bytes=40MB - ams.tar.gz.
rm -rf ant-media-server
