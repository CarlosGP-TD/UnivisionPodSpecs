
Pod::Spec.new do |s|
  s.name             = "UNComScore"
  s.version          = "0.1.0"
  s.summary          = "Univision ComScore Wrapper"
  s.description      = "Shared iOS Univision ComScore Wrapper/Helper library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Abel Duarte" => "aduarte@us.univision.com" }
  s.source           = { :git => "https://github.com/univision/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNComScore/Pod/Classes/**/*.{m,h}'

  s.preserve_paths = 'UNComScore/Pod/Frameworks/*.{framework,bundle}'

end
