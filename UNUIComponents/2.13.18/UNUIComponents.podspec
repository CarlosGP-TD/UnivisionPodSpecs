Pod::Spec.new do |s|
s.name             = "UNUIComponents"
s.version          = "2.13.18"
s.summary          = "Univision Common UI Components"
s.description      = "Shared iOS Univision UI components library"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Stephen Gowen" => "dev.sgowen@gmail.com" }
s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'UNUIComponents/Pod/Classes/**/*.{m,h}', 'UNUIComponents/Pod/Frameworks/**/*.{h}'

s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/TwitterCore/iOS" "${PODS_ROOT}/TwitterKit" "${PODS_ROOT}/Pod/Frameworks/"', 'GCC_PREPROCESSOR_DEFINITIONS' => 'COMSCORE_ON=1 NIELSEN_ON=1' }
s.preserve_paths = 'UNUIComponents/Pod/**/*.{framework,a}'

s.vendored_frameworks = 'UNUIComponents/Pod/Frameworks/iOSKruxLibUniversal.framework', 'UNUIComponents/Pod/Frameworks/UNIMoatMobileAppKit.framework'

s.prefix_header_contents = '#import "UIFont+DFUVDefaults.h"', '#import <DFComponents/KeepView.h>', '#import <DFComponents/KeepAttribute.h>', '#import <DFComponents/DFDispatchUtility.h>', '#import <DFComponents/UIImageView+SDWebImageAnimated.h>', '#import <DFComponents/UIViewController+Container.h>', '#import <DFComponents/UIViewController+KeepLayout.h>', '#import <SDWebImage/UIImageView+WebCache.h>', '#import <CocoaLumberjack/CocoaLumberjack.h>', '#import <DFComponents/KeepArray.h>', '#import "UIImage+UNCDAdditions.h"', '#import "DejalActivityView.h"', '#import <TwitterCore/TWTRDefines.h>', '#import "UNUIBundleUtil.h"', '#import "DFUVFeedSynConstants.h"', '#import "UNUIInstanceManager.h"', '#import "UNUITheme.h"', '#import "Macros.h"', '#import "UNUIBools.h"', '#import <DFComponents/DFDispatchUtility.h>'

s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation', 'AdSupport', 'SystemConfiguration', 'Security', 'AdSupport', 'WebKit'

# Include in the app main bundle
s.resources = 'UNUIComponents/Pod/Assets/**/*.png', 'UNUIComponents/Pod/Classes/**/*.xib', 'UNUIComponents/Pod/Classes/**/*.bundle', 'UNUIComponents/Pod/Assets/Fonts/*', 'UNUIComponents/Pod/Assets/*.plist', 'UNUIComponents/Pod/Assets/*.bundle'

# Create a "UNUIComponents.bundle" file
s.resource_bundles = {
'UNUIComponents' => ['UNUIComponents/Pod/Assets/*.lproj', 'UNUIComponents/Pod/Assets/Fonts/*', 'UNUIComponents/Pod/Assets/*.plist', 'UNUIComponents/Pod/Assets/*.bundle']
}

# Univision
s.dependency 'UNFeedSyn', '0.0.80'
s.dependency 'UNVideoPlayer', '0.7.7'

s.dependency 'UNContentDetails', '0.9.13'
s.dependency 'ULAdobeAuthenticator', '1.6.6'
s.dependency 'DFComponentsFramework', '~> 0.1.14'
s.dependency 'DFBrowserViewController', '1.0.1'
s.dependency 'UNComScore', '0.1.2'
s.dependency 'ULAdManager/DFP', '0.5.2'
s.dependency 'UNContentAds', '1.0.2'
s.dependency 'UNVideoAds', '1.1.3'

# 3rd Party
s.dependency 'AFNetworking', '2.6.0'
s.dependency 'Task', '1.0'
s.dependency 'XMLDictionary', '1.4'
s.dependency 'INTULocationManager', '4.1.0'
s.dependency 'CocoaLumberjack', '2.0.0'
s.dependency 'INSPullToRefresh', '1.0.5'
s.dependency 'MMDrawerController', '0.6.0'
s.dependency 'UrbanAirship-iOS-SDK', '8.0.2'
s.dependency 'Turnpike', '0.0.1'
s.dependency 'Fabric', '1.5.1'
s.dependency 'Crashlytics', '3.3.1'
s.dependency 'BuddyBuildSDK'

# Google
s.dependency 'Firebase', '3.10.0'
s.dependency 'FirebaseAnalytics', '3.6.0'
s.dependency 'FirebaseCore', '3.4.5'
s.dependency 'Google-Mobile-Ads-SDK', '7.15.0'
s.dependency 'Firebase/AdMob'
s.dependency 'GoogleTagManager', '~> 5.0'

end
