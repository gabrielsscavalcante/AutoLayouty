#
# Be sure to run `pod lib lint AutoLayouty.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AutoLayouty'
  s.version          = '0.1.0'
  s.summary          = 'Tool for creating Auto Layout for iOS applications.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Tool for creating Auto Layout for iOS applications. By installing AutoLayouty the programmatic development of your UIViews will be simpler with constraints added through a line of code, there will not be as much difficulty as there was before.
                       DESC

  s.homepage         = 'https://github.com/gabrielsscavalcante/AutoLayouty'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '@gabrielsscavalcante' => 'gabrielsoucavalcante@gmail.com' }
  s.source           = { :git => 'https://github.com/gabrielsscavalcante/AutoLayouty.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'AutoLayouty/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AutoLayouty' => ['AutoLayouty/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
