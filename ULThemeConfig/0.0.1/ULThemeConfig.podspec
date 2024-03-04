Pod::Spec.new do |s|
  s.name             = "ULThemeConfig"
  s.version          = "0.0.1"
  s.summary          = "A short description of ULThemeConfig."
  s.description      = "A long description of ULThemeConfig."
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Nitin Malik" => "nitin.malik@digiflare.com" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'ULThemeConfig/Pod/Classes/**/*.{m,h}'
  
end
