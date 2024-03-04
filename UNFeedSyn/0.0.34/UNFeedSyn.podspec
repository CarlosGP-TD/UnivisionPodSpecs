
Pod::Spec.new do |s|
  s.name             = "UNFeedSyn"
  s.version          = "0.0.34"
  s.summary          = "Univision FeedSyn Components"
  s.description      = "Shared iOS Univision FeedSyn components library"
  s.homepage         = "http://univision.com"
  s.license          = 'No license'
  s.author           = { "Ayman" => "aalkhalil@aspire-infotech.net" }
  s.source           = { :git => "https://github.com/CarlosGP-TD/UnivisionFrameworkTest.git", :tag => s.name + '/' + s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UNFeedSyn/Pod/Classes/**/*'

  s.dependency 'JSONModel'
  s.dependency 'NSHash'
end
