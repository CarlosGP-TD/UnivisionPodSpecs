Pod::Spec.new do |s|
s.name             = "ULAdobeAuthenticator"
s.version          = "2.4.8"
s.summary          = "ULAdobeAuthenticator"
s.description      = "Shared Univision iOS Adobe authentication client"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
s.source           = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

# Create a "ULAResources.bundle" file
s.resource_bundles = {
'ULAResources' => ['Code/' + s.name + '/Pod/Assets/adobepass.p12', 'Code/' + s.name + '/Pod/Assets/ULAdobeAuthenticator.xcassets', 'Code/' + s.name + '/Pod/Assets/*.lproj', 'Code/' + s.name + '/Pod/Assets/Fonts/*']
}

s.resources = 'Code/' + s.name + '/Pod/Assets/ULAdobeAuthenticator.xcassets'

# Source files
s.source_files   = 'Code/' + s.name + '/Pod/Classes/**/*.{m,h}'
s.preserve_paths = 'Code/' + s.name + '/Pod/Frameworks/**/*'

# Dependency
s.private_header_files = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/**/*.h'
s.dependency 'ULAnalyticsManager/Signals', '~> 1.1.0'
s.dependency 'AFNetworking', '2.6.0'

s.xcconfig     = { 
  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/' + s.name + '/Code/' + s.name + '/Pod/Frameworks/AccessEnabler/$(PLATFORM_NAME)"',
  'OTHER_LDFLAGS' => '$(inherited) -framework AccessEnabler'
}

end
