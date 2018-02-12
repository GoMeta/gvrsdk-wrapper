Pod::Spec.new do |s|

  s.name         = "GVRSDK-Wrapper"
  s.version      = "0.0.6"
  s.summary      = "Wraps GVRSDK as a dynamic framework for use as a Swift dependency"
  s.description  = <<-DESC
  The official GVRSDK iOS library links against a static library. Cocoapods can't handle transitive dependencies that link against static libraries. This framework wraps GVRSDK in a dynamic framework, correctly bundling and linking against libGVRSDK, for use in Cocoapods.
                   DESC

  s.homepage     = "https://github.com/googlevr/gvr-ios-sdk"
  s.license      = { :type => "Copyright", :text => "GVRSDK is Copyright 2017 Google" }
  s.author       = { "Sean Thielen" => "sean@gometa.io" }
  
  s.platform     = :ios, "9.3"
  s.source       = { :git => "https://github.com/GoMeta/gvrsdk-wrapper.git", :tag => "#{s.version}" }

  s.ios.vendored_frameworks = 'GVRSDK_Wrapper.framework'
  s.dependency 'GTMSessionFetcher/Core'
  s.dependency 'GoogleToolboxForMac/Logger'

end
