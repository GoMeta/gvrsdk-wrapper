# GVRSDK-Wrapper

The official [GVRSDK iOS library](https://github.com/googlevr/gvr-ios-sdk) links against a static library. Cocoapods can't handle transitive dependencies that link against static libraries (see [Cocoapods/#2926](https://github.com/CocoaPods/CocoaPods/issues/2926)). This framework wraps GVRSDK in a dynamic framework, correctly bundling and linking against libGVRSDK, for use in Cocoapods.

## Installation

To include it in your project, you must include the GoMeta Private Spec repo in your Podfile, and then add the dependency:

```
source "https://github.com/CocoaPods/Specs.git"
source "https://github.com/GoMeta/meta-ios-pods"

platform :ios, "10.0"
use_frameworks!

target 'APP_TARGET' do
  pod 'GVRSDK-Wrapper'
end
```

If you would like to include this as a framework dependency, you can do it in the normal way (e.g., `s.dependency 'GVRSDK-Wrapper'`). You will, however, need to make sure that the app target's Podfile includes the `meta-ios-pods` source.

## Current Version

This framework is currently built against GVRSDK v1.120.0.

## Building

Due to Github's filesize restrictions, libGVRSDK.a can not be included in this repository. If you want to build this framework, you will need to clone it, download `libGVRSDK.a` from https://dl.google.com/dl/cpdc/2d6b597cb1a13b1c/GVRSDK-1.120.0.tar.gz, and then place it in the `Pod/GVRSDK-Wrapper/Libraries` directory.