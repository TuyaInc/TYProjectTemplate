#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PROJECT'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PROJECT.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.com/GROUP_NAME/PROJECT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'USER_NAME' => 'USER_EMAIL' }
  s.source           = { :git => 'https://gitlab.com/GROUP_NAME/PROJECT.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'PROJECT/Classes/**/*'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  # 请把你的业务必须依赖写在这里，仅开发调试阶段使用的三方写在Podfile
  s.dependency 'TYModuleManager'    # 涂鸦的模块化工具
  s.dependency 'TuyaSmartHomeKit'   # 涂鸦智能SDK
end
