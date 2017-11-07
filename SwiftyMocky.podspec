#
# Be sure to run `pod lib lint Mocky.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyMocky'
  s.version          = '0.9.0'
  s.summary          = 'Unit testing library for Swift'
  s.description      = <<-DESC
Library that uses metaprogramming technique, to generate mocks based on sources, that makes testing for Swift Mockito-like.
                       DESC

  s.homepage         = 'https://github.com/MakeAWishFoundation/SwiftyMocky'
  #s.screenshots      = 'https://github.com/MakeAWishFoundation/SwiftyMocky/blob/master/guides/assets/example-watcher.gif', 'https://github.com/MakeAWishFoundation/SwiftyMocky/blob/master/guides/assets/example-given.gif', 'https://github.com/MakeAWishFoundation/SwiftyMocky/blob/master/guides/assets/example-verify.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Przemysław Wośko' => 'przemyslaw.wosko@intive.com', 'Andrzej Michnia' => 'amichnia@gmail.com' }
  s.source           = { :git => 'https://github.com/MakeAWishFoundation/SwiftyMocky.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.default_subspec  = "Core"
  s.preserve_paths = '*'

  s.subspec 'Core' do |core|
      core.source_files = 'Sources/Classes/**/*'
      core.frameworks = 'XCTest'
      core.dependency 'Sourcery'
      core.xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DMocky' }
  end
end
