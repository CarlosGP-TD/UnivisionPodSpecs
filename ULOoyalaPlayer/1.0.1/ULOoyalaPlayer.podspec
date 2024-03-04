# If using this podspec, you must include the following line in your Podfile:
# source 'https://github.com/ooyala/ios-sdk-podspecs.git'

Pod::Spec.new do |s|
  s.name            = "ULOoyalaPlayer"
  s.version         = "1.0.1"
  s.summary         = "Wrapper for the OoyalaPlayer with optional Freewheel integration."
  s.description     = <<-DESC
                          ULOoyalaPlayer is a wrapper for the OoyalaPlayer.
                          It can optionally use Freewheel.  
                       DESC
  s.homepage        = "http://univision.com"
  s.license         = 'No License'
  s.author          = { "Nitin Malik" => "nitin.malik@digiflare.com" }
  s.source          = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => "ULOoyalaPlayer/#{s.version.to_s}" }
  
  s.platform        = :ios, '8.0'
  s.requires_arc    = true
  
  s.source_files        = 'ULOoyalaPlayer/Pod/Classes/**/*.{h,m,mm}'
  s.public_header_files = 'ULOoyalaPlayer/Pod/Classes/**/*.h'
  
  s.resources = 'ULOoyalaPlayer/Pod/Assets/Images.xcassets'
  
  s.vendored_frameworks = [
    'ULOoyalaPlayer/Pod/Classes/OtherSources/FreeWheel/AdManager.framework',
  ]
  
  s.dependency 'INTULocationManager', '3.0.1'
  
  # Requires Podfile to specify:
  # source 'https://github.com/ooyala/ios-sdk-podspecs.git'
  s.dependency 'OoyalaSDK', '4.4.1'
  s.dependency 'OoyalaFreewheelSDK', '4.4.1'
    
end
