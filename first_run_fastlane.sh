#!/bin/bash

cd ios
fastlane init
echo "default_platform(:ios) platform :ios do desc "Description of what the lane does" lane :custom_lane do puts("this is my first lane") end end" >> Fastfile


