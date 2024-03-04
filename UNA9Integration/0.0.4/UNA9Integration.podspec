
Pod::Spec.new do |s|
  s.name             = "UNA9Integration"
  s.version          = "0.0.4"
  s.summary          = "Amazon 9 Integration"
  s.description      = "A9 Integration for iOS"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Libranner Santos" => "libranner.santos@bairesdev.com" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNA9Integration/Pod/Classes/**/*.{m,h}'

  s.preserve_paths = 'UNA9Integration/Pod/**/*.{framework,a}'

  s.vendored_frameworks = 'UNA9Integration/Pod/Frameworks/DTBiOSSDK.framework'

  s.frameworks = 'WebKit', 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'SystemConfiguration', 'CoreLocation'

  # Create a "UNA9Integration.bundle" file
  s.resource_bundles = {
    'UNA9Integration' => ['UNVideoPlayerIntegration/Pod/Assets/**/*.png']
  }
  
end
