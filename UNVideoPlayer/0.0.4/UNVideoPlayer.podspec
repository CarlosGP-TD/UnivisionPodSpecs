
Pod::Spec.new do |s|
  s.name             = "UNVideoPlayer"
  s.version          = "0.0.4"
  s.summary          = "Univision Video player"
  s.description      = "Shared iOS Univision Video player library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Sebastian Natalevich" => "sebastian.natalevich@bairesdev.com" }
  s.source           = { :git => "https://github.com/televisa-univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNVideoPlayer/Pod/Classes/**/*.{m,h}'

  s.preserve_paths = '**/*.{framework,a}'

  s.libraries = 'xml2'
  s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation', 'AdSupport', 'SystemConfiguration'

  s.private_header_files = 'UNVideoPlayer/Pod/Classes/Analytics/Headers/*.h'

  s.vendored_frameworks = 'UNVideoPlayer/Pod/Frameworks/AdManager.framework'
  s.vendored_libraries = 'UNVideoPlayer/Pod/Classes/Analytics/libAKAMMediaExtensions-AV_debug.a'

  # Include in the app main bundle
  s.resources = 'UNVideoPlayer/Pod/Assets/**/*.png'

  # Create a "UNVideoPlayer.bundle" file
  s.resource_bundles = {
    'UNVideoPlayer' => ['UNVideoPlayer/Pod/Assets/**/*.png']
  }

  # Univision
  s.dependency 'DFComponentsFramework', '~> 0.1.8'

  # 3rd Party
  s.dependency 'JMMarkSlider', '~> 1.0'

end