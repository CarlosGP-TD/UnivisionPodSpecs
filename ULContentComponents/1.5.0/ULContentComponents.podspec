Pod::Spec.new do |s|
  s.name             = "ULContentComponents"
  s.version          = "1.5.0"
  s.summary          = "Univision Content Components"
  s.description      = "Shared iOS Univision content components library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  
  s.subspec 'Main' do |ms|
    # Source files
    ms.source_files = 'Code/' + s.name + '/Pod/Classes/**/*.{m,h}'
    
    # Include images in the app main bundle
    ms.resources = 'Code/' + s.name + '/Pod/Assets/ULContentComponents.xcassets','Code/' + s.name + '/Pod/Classes/**/*.xib'

    # Create a "ULMCResources.bundle" file
    ms.resource_bundles = {
      'ULCCResources' => ['Code/' + s.name + '/Pod/Assets/*.lproj']
    }
    
    # Internal dependencies
    ms.dependency 'ULContentComponents/Signals'
    ms.dependency 'DFComponentsFramework', '0.1.14'
    ms.dependency 'ULAnalyticsManager/Signals', '~> 1.1.0'
    ms.dependency 'ULAnalyticsManager/FSAdditions', '~> 1.1.0'
    ms.dependency 'ULThemeConfig', '~> 0.0.1'
    ms.dependency 'ULAdManager/Signals', '0.4.0'

    # External dependencies
    ms.dependency 'CHTCollectionViewWaterfallLayout', '0.9.2'
  end
  
  s.subspec 'Signals' do |ss|
    ss.source_files = 'Code/' + s.name + '/Pod/Signals/**/*.{m,h}'
  end
    
  # Internal global dependencies
  s.dependency 'FSClient', '~> 1.2.0'
  s.dependency 'ULSignalDispatcher', '~> 1.0.0'

end
