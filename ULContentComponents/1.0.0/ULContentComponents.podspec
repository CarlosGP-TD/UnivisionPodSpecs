Pod::Spec.new do |s|
  s.name             = "ULContentComponents"
  s.version          = "1.0.0"
  s.summary          = "Univision Content Components"
  s.description      = "Shared iOS Univision content components library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Source files
  s.source_files = 'ULContentComponents/Pod/Classes/**/*.{m,h}'

  # Include images in the app main bundle
  s.resources = 'ULContentComponents/Pod/Assets/ULContentComponents.xcassets'

  # Create a "ULMCResources.bundle" file
  s.resource_bundles = {
    'ULCCResources' => ['ULContentComponents/Pod/Assets/*.lproj']
  }

  # Dependencies
  s.dependency 'SDWebImage', '3.7.2'
  s.dependency 'FSClient', '1.0.6'
  s.dependency 'DFComponentsFramework', '0.1.8'

end