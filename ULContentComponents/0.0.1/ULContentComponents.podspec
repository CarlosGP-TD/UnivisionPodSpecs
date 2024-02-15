Pod::Spec.new do |s|
  s.name             = "ULContentComponents"
  s.version          = "0.0.1"
  s.summary          = "Univision Content Components"
  s.description      = "Shared iOS Univision content components library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Hughes" => "alex.hughes@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.dependency 'SDWebImage', '3.7.2'
  s.dependency 'FSClient', '1.0.5'

end