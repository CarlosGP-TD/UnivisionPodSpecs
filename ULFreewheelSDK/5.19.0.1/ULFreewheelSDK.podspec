Pod::Spec.new do |s|
  s.name             = "ULFreewheelSDK"
  s.version          = "5.19.0.1"
  s.summary          = "Shared Freewheel SDK"
  s.description      = "ULFreewheelSDK is a wrapper for the Freewheel 'AdManager' framework, for shared use among dependent Univision components"
  s.homepage         = "http://univision.com"
  s.license          = 'No License'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  
  # Apple frameworks and libraries to include according to:
  # http://hub.freewheel.tv/display/techdocs/How+to+Compile+FreeWheel+iOS+SDK+and+Optional+Modules+into+App
  s.libraries           = 'xml2'
  s.frameworks          = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation'
  s.weak_frameworks     = 'AdSupport'

  # Third party frameworks
  s.vendored_frameworks ='SharedFrameworks/Freewheel/*.framework'

end
