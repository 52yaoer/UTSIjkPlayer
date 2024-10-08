#
# Be sure to run `pod lib lint PodIJKPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UTSIjkPlayer'
  s.version          = '1.0.0'
  s.summary          = 'framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ijkplayer framework.
                       DESC

  s.homepage         = 'https://github.com/52yaoer/UTSIjkPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '176142998' => '176142998@qq.com' }
  s.source           = { :http => 'https://raw.githubusercontent.com/52yaoer/UTSIjkPlayer/main/IJKMediaFramework.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = '*.h'
  
  s.subspec 'Core' do |ss|
      ss.vendored_frameworks = '*.framework'
      ss.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "MediaPlayer"
      ss.libraries   = "bz2", "z", "stdc++"
  end
  
  #s.static_framework = true
  
  # s.resource_bundles = {
  #   'PodIJKPlayer' => ['PodIJKPlayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
end
