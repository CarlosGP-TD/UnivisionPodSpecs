Pod::Spec.new do |s|
s.name             = "ULAdobeAuthenticator"
s.version          = "1.5.6"
s.summary          = "ULAdobeAuthenticator"
s.description      = "Shared Univision iOS Adobe authentication client"
s.homepage         = "http://univision.com"
s.license          = 'No license'
s.author           = { "Steve Chung" => "steve.chung@digiflare.com" }
s.source           = { :git => "https://github.com/televisa-univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

# Create a "ULAResources.bundle" file
s.resource_bundles = {
'ULAResources' => ['Code/' + s.name + '/Pod/Assets/adobepass.p12', 'Code/' + s.name + '/Pod/Assets/ULAdobeAuthenticator.xcassets', 'Code/' + s.name + '/Pod/Assets/*.lproj', 'Code/' + s.name + '/Pod/Assets/Fonts/*']
}

s.resources = 'Code/' + s.name + '/Pod/Assets/ULAdobeAuthenticator.xcassets'

# Source files
s.source_files        = 'Code/' + s.name + '/Pod/Classes/**/*.{m,h}'

# Dependency
s.private_header_files = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/**/*.h'
s.vendored_libraries   = 'Code/' + s.name + '/Pod/Classes/AccessEnabler/lib/libAccessEnabler.a'
s.dependency 'ULAnalyticsManager/Signals', '~> 1.1.0'
s.dependency 'AFNetworking', '2.6.0'
s.dependency 'DFComponentsFramework', '~> 0.1.10'



end
