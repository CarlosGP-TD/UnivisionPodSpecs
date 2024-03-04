Pod::Spec.new do |s|
  s.name             = "ULAdManager"
  s.version          = "0.5.5"
  s.summary          = "Used to request ads from various ad services."
  s.description      = "ULAdManager can be used to request ads from ad services. It abstract away which ad service is being used from the application itself."
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/televisa-univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Default subspec
  s.default_subspec = 'Main'

  s.subspec 'Main' do |ms|
    # Source files
    ms.source_files = 'Code/' + s.name + '/Pod/Classes/**/*.{m,h}'
    
    # Internal dependencies
    ms.dependency 'ULAdManager/Signals'
    
    # Include images in the app main bundle
    ms.resources = 'Code/' + s.name + '/Pod/Assets/ULAdManager.xcassets'
    
    # Internal dependencies
    ms.dependency 'ULSignalDispatcher', '~> 1.0.0'
    ms.dependency 'DFComponentsFramework', '0.1.14'
  end
  
  s.subspec 'Signals' do |ss|
    ss.source_files = 'Code/' + s.name + '/Pod/Signals/**/*.{m,h}'
    
    # Internal dependencies
    ss.dependency 'ULSignalDispatcher', '~> 1.0.0'
  end
  
  # ========================
  # Ad Services
  # ========================
  
  s.subspec 'DFP' do |ds|
    ds.source_files = 'Code/' + s.name + '/Pod/DFP/Classes/**/*.{m,h}'

    # Internal dependencies
    ds.dependency 'ULAdManager/Main'
    
    # External dependencies
    ds.dependency 'Google-Mobile-Ads-SDK', '7.15.0'
    ds.dependency 'INTULocationManager', '4.1.0'
    ds.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/Pod/Frameworks/"' }

    ds.vendored_frameworks = 'Code/' + s.name + '/Pod/DFP/Frameworks/*.framework', 'Code/' + s.name + '/Pod/Amazon9/Frameworks/*.framework'

    ds.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'StoreKit', 'SystemConfiguration', 'WebKit', 'CoreLocation'
  end
  
  s.subspec 'YieldMo' do |ds|
    ds.source_files = 'Code/' + s.name + '/Pod/YieldMo/Classes/**/*.{m,h}'
    
    # Internal dependencies
    ds.dependency 'ULAdManager/Main'
    
    # Frameworks
    ds.frameworks = 'StoreKit', 'AdSupport', 'CoreLocation'
    ds.vendored_frameworks = 'Code/' + s.name + '/Pod/YieldMo/Frameworks/*.framework'
    
    ds.resources = 'Code/' + s.name + '/Pod/YieldMo/Resources/*.bundle'
  end
  
end
