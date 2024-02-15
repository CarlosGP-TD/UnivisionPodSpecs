
Pod::Spec.new do |s|
s.name             = "UNContentAds"
s.version          = "1.0.4"
s.summary          = "Univision Content Ads"
s.description      = "Shared iOS Univision Content Ads library"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Abel Duarte" => "aduarte@univision.com" }
s.source           = { :git => "https://github.com/univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'UNContentAds/Pod/Classes/**/*.{m,h}'

s.frameworks = 'UIKit'

# 3rd Party
s.dependency 'YieldmoSDK', '4.2.1'
s.dependency 'Google-Mobile-Ads-SDK', '7.15.0'
s.dependency 'FBAudienceNetwork', '4.17.0'
s.dependency 'GoogleMobileAdsMediationFacebook'

end
