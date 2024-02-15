Pod::Spec.new do |s|
  s.name             = "DFComponentsFramework"
  s.version          = "0.1.8.1"
  s.summary          = "Internal Digiflare Components."
  s.description      = "DFComponents is a collection of reusable components."
  s.homepage         = "http://digiflare.com"
  s.license          = 'No License'
  s.author           = { "Digiflare" => "iosteam@digiflare.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.social_media_url = 'https://twitter.com/digiflare'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  # Third party frameworks
  s.vendored_frameworks ='DFComponentsFramework/**/*.framework'
  
  # Dependencies
  s.dependency 'AFNetworking', '2.6.0'
  s.dependency 'SDWebImage', '3.7.2'
  
end
