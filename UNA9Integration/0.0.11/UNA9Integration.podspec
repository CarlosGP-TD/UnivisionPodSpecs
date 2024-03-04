
Pod::Spec.new do |s|
  s.name             = "UNA9Integration"
  s.version          = "0.0.11"
  s.summary          = "Amazon 9 Integration"
  s.description      = "A9 Integration for iOS"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Libranner Santos" => "libranner.santos@bairesdev.com" }
  s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'UNA9Integration/Pod/Classes/**/*.{m,h}'

  s.frameworks = 'WebKit', 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'SystemConfiguration', 'CoreLocation'

  # Create a "UNA9Integration.bundle" file
  s.resource_bundles = {
    'UNA9Integration' => ['UNVideoPlayerIntegration/Pod/Assets/**/*.png']
  }

  s.dependency 'AmazonPublisherServicesSDK'
  s.dependency 'AmazonPublisherServicesAdMobAdapter'

end
