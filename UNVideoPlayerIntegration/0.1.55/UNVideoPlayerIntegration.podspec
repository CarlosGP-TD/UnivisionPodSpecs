
Pod::Spec.new do |s|
s.name             = "UNVideoPlayerIntegration"
s.version          = "0.1.55"
s.summary          = "Univision Video player Integration"
s.description      = "Shared iOS Univision Video Player Integration"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Abel Duarte" => "aduarte@us.univision.com" }
s.source           = { :git => "https://github.com/CarlosGP-TD/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'UNVideoPlayerIntegration/Pod/Classes/**/*.{m,h}'

s.preserve_paths = 'UNVideoPlayerIntegration/Pod/**/*.{framework,a}'
s.vendored_frameworks = 'UNVideoPlayerIntegration/Pod/Frameworks/iOSKruxLibUniversal.framework', 'UNVideoPlayerIntegration/Pod/Frameworks/AdManager.framework', 'UNVideoPlayerIntegration/Pod/Frameworks/NielsenAppApi.framework' 

s.libraries = 'xml2' , 'c++' , 'sqlite3'
s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation', 'WebKit', 'AdSupport'

# Include in the app main bundle
s.resources = 'UNVideoPlayerIntegration/Pod/Assets/**/*.png'

# Create a "UNVideoPlayerIntegration.bundle" file
s.resource_bundles = {
'UNVideoPlayerIntegration' => ['UNVideoPlayerIntegration/Pod/Assets/**/*.png'],
'UNVideoPlayerIntegrationLocalizable' => 'UNVideoPlayerIntegration/Pod/Assets/Localization/*.lproj'
}

s.dependency 'ULAdobeAuthenticator', '2.4.4'
s.dependency 'AppsFlyerFramework', '4.7.11'
s.dependency 'TOWebViewController', '2.0.19'
s.dependency 'ULAnalyticsManager', '~> 1.1.6'
s.dependency 'ULAnalyticsManager/FSAdditions', '~> 1.1.4'
s.dependency 'Firebase/Core'
s.dependency 'ComScore'
s.dependency 'JMMarkSlider', '~> 1.0'

end
