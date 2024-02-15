Pod::Spec.new do |s|
  s.name             = "UnivisionAuthenticator"
  s.version          = "1.1.2"
  s.summary          = "Univision Authenticator"
  s.description      = "Shared iOS Univision authentication client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Public header files
  # s.public_header_files = 'UnivisionAuthenticator/Pod/Classes/Public/*.h'

  # Source files
  s.source_files = 'UnivisionAuthenticator/Pod/Classes/**/*.{m,h}'

  # Include images in the app main bundle
  s.resources = 'UnivisionAuthenticator/Pod/Assets/UnivisionAuthenticator.xcassets'

  # Create a "ULAResources.bundle" file
  s.resource_bundles = {
    'UAResources' => ['UnivisionAuthenticator/Pod/Assets/*.lproj']
  }

  # Dependency 
  #s.dependency 'Gigya-iOS-SDK', '3.4.2'
  #s.dependency 'Facebook-iOS-SDK', '4.1.0'
  #s.dependency 'FBSDKCoreKit', '4.4.0'
  s.dependency 'DFComponentsFramework', '~> 0.1.8.1'
  s.dependency 'XMLDictionary', '1.4'
  s.dependency 'NSHash', '1.0.1'
  s.dependency 'TTTAttributedLabel', '1.13.4'

  # Third party frameworks
  s.vendored_frameworks ='UnivisionAuthenticator/Pod/Frameworks/*.framework'

end