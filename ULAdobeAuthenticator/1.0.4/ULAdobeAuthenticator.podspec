Pod::Spec.new do |s|
  s.name             = "ULAdobeAuthenticator"
  s.version          = "1.0.4"
  s.summary          = "ULAdobeAuthenticator"
  s.description      = "Shared Univision iOS Adobe authentication client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true


  
  # Create a "ULAResources.bundle" file
  s.resource_bundles = {
    'ULAResources' => ['ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/adobepass.p12']
  }

  # AccessEnabler folder
  s.subspec 'AccessEnabler' do |ae|

     ae.source_files         = 'ULAdobeAuthenticator/Pod/Classes/AccessEnabler/**/*.{m,h}'
     ae.private_header_files = 'ULAdobeAuthenticator/Pod/Classes/AccessEnabler/**/*.h'
     ae.vendored_libraries   = 'ULAdobeAuthenticator/Pod/Classes/AccessEnabler/lib/libAccessEnabler.a'
     
  end

  # ULAdobeAuthenticator Classes
  s.subspec 'ULAdobeAuthenticator' do |ula|

    # Source files
    ula.source_files        = 'ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/**/*.{m,h}'

    # Public header files
    ula.public_header_files = 'ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/ULAdobeAuthenticator.h', 'ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/ULAAuthenticationManager.h', 'ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/ULALoginDelegate.h', 'ULAdobeAuthenticator/Pod/Classes/ULAdobeAuthenticator/ULAProvider.h'

    # Dependency 
    ula.dependency 'ULAdobeAuthenticator/AccessEnabler' 
        
  end

end
