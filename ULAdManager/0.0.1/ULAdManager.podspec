Pod::Spec.new do |s|
  s.name             = "ULAdManager"
  s.version          = "0.0.1"
  s.summary          = "A short description of ULAdManager."
  s.description      = "A long description of ULAdManager."
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Default subspec
  s.default_subspec = 'Main'

  s.subspec 'Main' do |ms|
    # Source files
    ms.source_files = 'ULAdManager/Pod/Classes/**/*.{m,h}', 'ULAdManager/Pod/Signals/**/*.{m,h}'
    
    # Internal dependencies
    ms.dependency 'ULSignalDispatcher', '~> 1.0.0'
    ms.dependency 'DFComponentsFramework', '~> 0.1.8'
  end

  s.subspec 'DFP' do |ds|
    ds.source_files = 'ULAdManager/Pod/DFP/Classes/**/*.{m,h}'
    
    # Internal dependencies
    ds.dependency 'ULAdManager/Main'
    
    # External dependencies
    ds.dependency 'Google-Mobile-Ads-SDK', '7.6.0'
    ds.dependency 'INTULocationManager', '4.1.0'
  end
  
end
