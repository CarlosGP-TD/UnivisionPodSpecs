Pod::Spec.new do |s|
  s.name             = "UnivisionAuthenticator"
  s.version          = "1.2.0"
  s.summary          = "Univision Authenticator"
  s.description      = "Shared iOS Univision authentication client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Public header files
  # s.public_header_files = 'Code/UnivisionAuthenticator/Pod/Classes/Public/*.h'

  # Source files
  s.source_files = 'Code/' + s.name + '/Pod/Classes/**/*.{m,h}'

  # Include images in the app main bundle
  s.resources = 'Code/' + s.name + '/Pod/Assets/UnivisionAuthenticator.xcassets'

  # Create a "ULAResources.bundle" file
  s.resource_bundles = {
    'UAResources' => ['Code/' + s.name + '/Pod/Assets/*.lproj']
  }

  # Dependency
  s.dependency 'DFComponentsFramework', '0.1.14'
  s.dependency 'XMLDictionary', '1.4'
  s.dependency 'NSHash', '1.0.1'
  s.dependency 'TTTAttributedLabel', '1.13.4'

  # Third party frameworks
  s.vendored_frameworks = 'Code/' + s.name + '/Pod/Frameworks/*.framework'

end
