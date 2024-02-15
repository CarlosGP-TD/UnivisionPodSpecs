Pod::Spec.new do |s|
  s.name             = 'DFBrowserViewController'
  s.version          = '1.0.1'
  s.summary          = 'Basic in-app browser for iOS.'
  s.description      = <<-DESC
                       DFBrowserViewController provides a simple extensible browser. 
                       
                       Features:
                       * A simple in-app browser that can easily be subclassed and extended.
                       DESC
  s.homepage         = 'http://digiflare.com'
  s.license          = { :type => 'None', :file => 'LICENSE' }
  s.author           = { 'Digiflare' => 'iosteam@digiflare.com' }
  s.source           = { :git => 'https://github.com/univision/DFBrowserViewController', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Digiflare'

  s.platform     = :ios
  s.ios.deployment_target = '6.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

  s.resources = 'DFBrowserViewController/DFBrowserViewController/**/*.{png,strings}'

  s.source_files = 'DFBrowserViewController/DFBrowserViewController/**/*.{m,h}'
  s.public_header_files = 'DFBrowserViewController/DFBrowserViewController/**/*.{h}'
end
