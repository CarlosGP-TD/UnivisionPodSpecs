Pod::Spec.new do |s|
  s.name             = "UNUIComponents"
  s.version          = "0.0.2"
  s.summary          = "Univision Common UI Components"
  s.description      = "Shared iOS Univision UI components library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Stephen Gowen" => "dev.sgowen@gmail.com" }
  s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNUIComponents/Pod/Classes/**/*.{m,h}'
  s.frameworks = 'TealiumLibrary', 'AdManager', 'ym', 'TwitterCore', 'TwitterKit', 'OoyalaFreewheelSDK'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/../../Pod/Classes/Other" "${PODS_ROOT}/TwitterCore/iOS" "${PODS_ROOT}/TwitterKit"' }
  s.vendored_frameworks = 'TealiumLibrary.framework', 'AdManager.framework', 'ym.framework', 'TwitterCore.framework', 'TwitterKit.framework'
  s.prefix_header_contents = '#import "UIColor+DFUVApplicationColors.h"', '#import "UIFont+DFUVDefaults.h"', '#import <DFComponents/KeepView.h>', '#import <DFComponents/KeepAttribute.h>', '#import <DFComponents/DFDispatchUtility.h>', '#import <DFComponents/UIImageView+SDWebImageAnimated.h>', '#import <DFComponents/UIViewController+Container.h>', '#import <DFComponents/UIViewController+KeepLayout.h>', '#import <SDWebImage/UIImageView+WebCache.h>', '#import <CocoaLumberjack/CocoaLumberjack.h>', '#import <DFComponents/KeepArray.h>', '#import "UIImage+DFAdditions.h"', '#import "DejalActivityView.h"', '#import <TwitterCore/TWTRDefines.h>'

# Include in the app main bundle
  s.resources = 'UNUIComponents/Pod/Assets/UNUIComponents.xcassets', 'UNUIComponents/Pod/Classes/**/*.xib', 'UNUIComponents/Pod/Classes/**/*.bundle'

# Create a "UNUIComponents.bundle" file
  s.resource_bundles = {
    'UNUIComponents' => ['UNUIComponents/Pod/Assets/*.lproj', 'UNUIComponents/Pod/Assets/Fonts/*']
  }

# Univision
  s.dependency 'UNFeedSyn', '0.0.45'
  s.dependency 'DFComponentsFramework', '~> 0.1.8'
  s.dependency 'DFBrowserViewController', '0.9.6'
  s.dependency 'ULAdobeAuthenticator', '1.2.0'

# 3rd Party
  s.dependency 'AFNetworking', '2.6.0'
  s.dependency 'NSHash', '1.0.1'
  s.dependency 'SDWebImage', '3.7.2'
  s.dependency 'Task', '1.0'
  s.dependency 'XMLDictionary', '1.4'
  s.dependency 'INTULocationManager', '3.0.1'
  s.dependency 'CocoaLumberjack', '2.0.0'
  s.dependency 'INSPullToRefresh', '1.0.5'
  s.dependency 'TTTAttributedLabel', '1.13.0'
  s.dependency 'CHTCollectionViewWaterfallLayout', '0.9.2'
  s.dependency 'Google-Mobile-Ads-SDK', '7.2.2'
  s.dependency 'MMDrawerController', '0.6.0'
  s.dependency 'UrbanAirship-iOS-SDK', '~> 6.0.2'
  s.dependency 'Turnpike', '0.0.1'
  s.dependency 'Fabric', '1.5.1'
  s.dependency 'Crashlytics', '3.3.1'
  s.dependency 'TwitterKit', '1.15.1'
  s.dependency 'OoyalaSDK', '4.4.1'
  s.dependency 'OoyalaFreewheelSDK', '4.4.1'
  s.dependency 'KTCenterFlowLayout', '1.1.1'

end
