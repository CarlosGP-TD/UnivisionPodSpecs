Pod::Spec.new do |s|
  s.name             = "FSClient"
  s.version          = "1.0.2"
  s.summary          = "FSClient"
  s.description      = "Shared Univision iOS Feed Syndicatior Client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Pezzi" => "alexpezzi@gmail.com" }
  s.source           = { :git => "https://github.com/televisa-univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'FSClient/Pod/Classes/**/*'

  # Dependency
  s.dependency 'AFNetworking', '2.5.4'
  s.dependency 'NSHash'

end
