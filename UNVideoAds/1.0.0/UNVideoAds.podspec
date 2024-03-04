
Pod::Spec.new do |s|
s.name             = "UNVideoAds"
s.version          = "1.0.0"
s.summary          = "Univision Video Ads"
s.description      = "Univision Video Ads"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Abel Duarte" => "aduarte@univision.net" }
s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'UNVideoAds/Pod/Classes/**/*.{m,h}'

s.preserve_paths = 'UNVideoAds/Pod/**/*.{framework,a}'

s.libraries = 'xml2' , 'c++' , 'sqlite3'

s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation', 'AdSupport', 'SystemConfiguration', 'Security'

s.vendored_frameworks = 'UNVideoAds/Pod/Frameworks/AdManager.framework'

# Include in the app main bundle
s.resources = 'UNVideoAds/Pod/Assets/**/*.png'

# Create a "UNVideoAds.bundle" file
s.resource_bundles = {
'UNVideoAds' => ['UNVideoAds/Pod/Assets/**/*.png']
}

end
