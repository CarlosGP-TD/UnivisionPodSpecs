Pod::Spec.new do |s|
  s.name             = "ULSignalDispatcher"
  s.version          = "1.0.0"
  s.summary          = "Univision Signal Dispatcher"
  s.description      = "Univision iOS library for strongly typed, decoupled interaction between components."
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Nitin Malik" => "nitin.malik@digiflare.com" }
  s.source           = { :git => "https://github.com/televisa-univision/Univision-Framework-iOS.git", :tag => s.name + '/' + s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  # Source files
  s.source_files = 'ULSignalDispatcher/Pod/Classes/**/*.{m,h}'
    
end
