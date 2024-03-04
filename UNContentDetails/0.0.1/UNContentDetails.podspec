
Pod::Spec.new do |s|
  s.name             = "UNContentDetails"
  s.version          = "0.0.1"
  s.summary          = "Univision Content Details"
  s.description      = "Shared iOS Univision Content Details library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Stephen Gowen" => "dev.sgowen@gmail.com" }
  s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNContentDetails/Pod/Classes/**/*.{m,h}'

  s.preserve_paths = 'UNContentDetails/Pod/**/*.{framework,a}'

  s.frameworks = 'UIKit'

# Include in the app main bundle
  s.resources = 'UNContentDetails/Pod/Assets/**/*.png'

# Create a "UNContentDetails.bundle" file
  s.resource_bundles = {
    'UNContentDetails' => ['UNContentDetails/Pod/Assets/**/*.png']
  }

# Univision
  s.dependency 'DFComponentsFramework', '~> 0.1.8'

end
