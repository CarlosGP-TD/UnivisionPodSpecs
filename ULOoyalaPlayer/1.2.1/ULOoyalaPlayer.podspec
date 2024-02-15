# If using this podspec, you must include the following line in your Podfile:
# source 'https://github.com/ooyala/ios-sdk-podspecs.git'

Pod::Spec.new do |s|
  s.name            = "ULOoyalaPlayer"
  s.version         = "1.2.1"
  s.summary         = "Wrapper for the OoyalaPlayer with optional Freewheel integration."
  s.description     = <<-DESC
                          ULOoyalaPlayer is a wrapper for the OoyalaPlayer.
                          It can optionally use Freewheel.  
                       DESC
  s.homepage        = "http://univision.com"
  s.license         = 'No License'
  s.author          = { "Nitin Malik" => "nitin.malik@digiflare.com" }
  s.source          = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => "ULOoyalaPlayer/#{s.version.to_s}" }
  
  s.platform        = :ios, '8.0'
  s.requires_arc    = true
  
  s.source_files        = 'ULOoyalaPlayer/Pod/Classes/**/*.{h,m,mm}'
  s.public_header_files = 'ULOoyalaPlayer/Pod/Classes/**/*.h'

  # Include images in the app main bundle
  s.resources = 'ULOoyalaPlayer/Pod/Assets/Images.xcassets'

  # Create a "ULOoyalaPlayerResources.bundle" file
  s.resource_bundles = {
    'ULOoyalaPlayerResources' => ['ULOoyalaPlayer/Pod/Assets/*.lproj']
  }

  # Internal Dependencies
  s.dependency 'ULFreewheelSDK', '~> 5.19.0'
  s.dependency 'FSClient', '~>1.2.0'
  s.dependency 'ULSignalDispatcher', '~>1.0.0'
  s.dependency 'ULAnalyticsManager', '~>1.1.0'
  s.dependency 'ULAnalyticsManager/FSAdditions', '~>1.1.0'

  # External Dependencies
  s.dependency 'INTULocationManager', '4.1.0'  

  # Requires Podfile to specify:
  # source 'https://github.com/ooyala/ios-sdk-podspecs.git'
  s.dependency 'OoyalaSDK', '4.4.1'
  s.dependency 'OoyalaFreewheelSDK', '4.4.1'
    
end
