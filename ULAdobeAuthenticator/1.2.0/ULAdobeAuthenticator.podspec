Pod::Spec.new do |s|
  s.name             = "ULAdobeAuthenticator"
  s.version          = "1.2.0"
  s.summary          = "ULAdobeAuthenticator"
  s.description      = "Shared Univision iOS Adobe authentication client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  
  # Create a "ULAResources.bundle" file
  s.resource_bundles = {
    'ULAResources' => ['Code/' + s.name + '/Pod/Classes/ULAdobeAuthenticator/adobepass.p12']
  }

  # AccessEnabler folder
  s.subspec 'AccessEnabler' do |ae|

     ae.source_files         = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/**/*.{m,h}'
     ae.private_header_files = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/**/*.h'
     ae.vendored_libraries   = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/lib/libAccessEnabler.a'
     
  end

  # ULAdobeAuthenticator Classes
  s.subspec 'ULAdobeAuthenticator' do |ula|

    # Source files
    ula.source_files        = 'Code/' + s.name + '/Pod/Classes/ULAdobeAuthenticator/**/*.{m,h}'
    
    # Dependency 
    ula.dependency 'ULAdobeAuthenticator/AccessEnabler' 
    ula.dependency 'DFComponentsFramework', '~> 0.1.10'
    ula.dependency 'ULAnalyticsManager/Signals', '~> 1.1.0'
  end

  # ULNetworkClient Classes
  s.subspec 'ULNetworkClient' do |ulnc|

    ulnc.source_files        = 'Code/' + s.name + '/Pod/Classes/ULNetworkClient/**/*.{m,h}'

    # External Dependency 
    ulnc.dependency 'AFNetworking', '2.6.0'

  end

  # ULMVPDWhiteList Classes
  s.subspec 'ULMVPDWhiteListClient' do |ulwl|

    # Source files
    ulwl.source_files = 'Code/' + s.name + '/Pod/Classes/ULMVPDWhiteListClient/**/*.{m,h}'

    # Internal Dependency
    ulwl.dependency 'ULAdobeAuthenticator/ULAdobeAuthenticator'
    ulwl.dependency 'ULAdobeAuthenticator/ULNetworkClient'    
  end

end
