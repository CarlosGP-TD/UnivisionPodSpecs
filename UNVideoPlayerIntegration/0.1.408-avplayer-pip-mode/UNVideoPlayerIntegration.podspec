
Pod::Spec.new do |s|
s.name             = "UNVideoPlayerIntegration"
s.version          = "0.1.408-avplayer-pip-mode"
s.summary          = "Univision Video player Integration"
s.description      = "Shared iOS Univision Video Player Integration"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Mohammad Imran" => "mohd.imran@3pillarglobal.com" }
s.source           = { :git => "https://github.com/univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
s.platform     = :ios, '9.0'
s.requires_arc = true

s.source_files = 'UNVideoPlayerIntegration/Pod/Classes/**/*.{m,h}'

s.preserve_paths = 'UNVideoPlayerIntegration/Pod/**/*.{framework,a}'
s.libraries = 'xml2' , 'c++' , 'sqlite3'
s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation', 'WebKit', 'AdSupport'

# Include in the app main bundle
s.resources = 'UNVideoPlayerIntegration/Pod/Assets/**/*.png','UNVideoPlayerIntegration/Pod/Assets/**/*.css'

# Create a "UNVideoPlayerIntegration.bundle" file
s.resource_bundles = {
    'UNVideoPlayerIntegration' => ['UNVideoPlayerIntegration/Pod/Assets/**/*.png'],
    'UNVideoPlayerIntegrationLocalizable' => 'UNVideoPlayerIntegration/Pod/Assets/Localization/*.lproj'
}

# Univision
s.dependency 'UNA9Integration', '~> 0.0.11'
s.dependency 'ULAdobeAuthenticator', '2.4.28'
s.dependency 'ULAnalyticsManager', '~> 1.1.7'
s.dependency 'ULAnalyticsManager/FSAdditions', '~> 1.1.7'

# Third Party
s.dependency 'GoogleAds-IMA-iOS-SDK', '3.14.4'
s.dependency 'JWPlayer-SDK', '3.7.0'
s.dependency 'Permutive_iOS', '~> 1.0.0-beta'
s.dependency 'Mux-Stats-AVPlayer', '2.0.0'
s.dependency 'Mux-Stats-Google-IMA', '0.6.0'

s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'UNVideoPlayerIntegration/Pod/Tests/**/*.{m,h}'
    test_spec.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ULAdobeAuthenticator/Code/ULAdobeAuthenticator/Pod/Frameworks/AccessEnabler/$(PLATFORM_NAME)"',
      'OTHER_LDFLAGS' => '-framework AccessEnabler',
      'LD_RUNPATH_SEARCH_PATHS' => '"$(PODS_ROOT)/ULAdobeAuthenticator/Code/ULAdobeAuthenticator/Pod/Frameworks/AccessEnabler/$(PLATFORM_NAME)"'
    }
end
end
