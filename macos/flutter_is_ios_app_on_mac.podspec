#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_is_ios_app_on_mac.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_is_ios_app_on_mac'
  s.version          = '0.0.1'
  s.summary          = 'Check if this is an iOS app executed on a mac'
  s.description      = <<-DESC
Check if this is an iOS app executed on a mac
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
