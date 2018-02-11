# GVRSDK-Wrapper

The official [GVRSDK iOS library](https://github.com/googlevr/gvr-ios-sdk) links against a static library. Cocoapods can't handle transitive dependencies that link against static libraries (see: https://github.com/CocoaPods/CocoaPods/issues/2926 ). This framework wraps GVRSDK in a dynamic framework, correctly bundling and linking against libGVRSDK, for use in Cocoapods.

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