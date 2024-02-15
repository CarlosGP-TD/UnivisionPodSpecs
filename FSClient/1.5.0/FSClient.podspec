Pod::Spec.new do |s|
  s.name             = "FSClient"
  s.version          = "1.5.0"
  s.summary          = "FSClient"
  s.description      = "Shared Univision iOS Feed Syndicatior Client"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Alex Pezzi" => "alexpezzi@gmail.com" }
  s.source           = { :git => "https://github.com/univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  
  s.source_files = 'Code/' + s.name + '/Pod/Classes/**/*'

  # Dependency
  s.dependency 'AFNetworking', '2.6.0'
  s.dependency 'NSHash'

end
