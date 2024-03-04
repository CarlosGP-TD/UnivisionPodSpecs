Pod::Spec.new do |s|
  s.name             = "ULAnalyticsManager"
  s.version          = "1.0.1"
  s.summary          = "Univision Analytics Manager"
  s.description      = "Univision iOS library for receiving analytics signals from other framework components."
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
    ms.source_files = 'ULAnalyticsManager/Pod/Classes/**/*.{m,h}'
    
    # Internal dependencies
    ms.dependency 'ULAnalyticsManager/Signals'
  end
  
  s.subspec 'Signals' do |ss|
    ss.source_files = 'ULAnalyticsManager/Pod/Signals/**/*.{m,h}'
  end

  s.subspec 'FSAdditions' do |fs|
    fs.source_files = 'ULAnalyticsManager/Pod/FSAdditions/**/*.{m,h}'

    # Internal dependencies
    fs.dependency 'ULAnalyticsManager/Signals'

    # External Dependencies
    fs.dependency 'FSClient', '~> 1.0.6'
  end

  s.subspec 'Tealium' do |ts|
    ts.source_files = 'ULAnalyticsManager/Pod/Tealium/Classes/**/*.{m,h}'

    # Third party frameworks
    ts.vendored_frameworks ='ULAnalyticsManager/Pod/Tealium/Frameworks/**/*.framework'

    # Internal dependencies
    ts.dependency 'ULAnalyticsManager/Main'
  end

  # Global Dependencies
  s.dependency 'ULSignalDispatcher', '~> 1.0.0'  
  
end
