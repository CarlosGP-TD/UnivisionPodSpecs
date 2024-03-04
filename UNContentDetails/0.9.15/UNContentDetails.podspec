
Pod::Spec.new do |s|
  s.name             = "UNContentDetails"
  s.version          = "0.9.15"
  s.summary          = "Univision Content Details"
  s.description      = "Shared iOS Univision Content Details library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Stephen Gowen" => "dev.sgowen@gmail.com" }
  s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNContentDetails/Pod/Classes/**/*.{m,h}'

  # Include in the app main bundle
  s.resources = 'UNContentDetails/Pod/Assets/**/*.png'

  s.frameworks = 'UIKit'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/TwitterCore/iOS" "${PODS_ROOT}/TwitterKit"' }

  s.prefix_header_contents = '#import <TwitterCore/TWTRDefines.h>'

# Univision
  s.dependency 'DFComponentsFramework', '~> 0.1.14'

# 3rd Party
  s.dependency 'TTTAttributedLabel', '1.13.0'
  s.dependency 'TwitterKit', '1.15.1'
  s.dependency 'KTCenterFlowLayout', '1.1.1'
  s.dependency 'CHTCollectionViewWaterfallLayout', '0.9.2'
  s.dependency 'YieldmoSDK', '4.2.1'

end
