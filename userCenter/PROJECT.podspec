Pod::Spec.new do |s|
  s.name             = 'PROJECT'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PROJECT.'
  s.homepage         = 'https://gitlab.com/GROUP_NAME/PROJECT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'USER_NAME' => 'USER_EMAIL' }
  s.source           = { :git => 'https://gitlab.com/GROUP_NAME/PROJECT.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  # 源文件
  s.source_files = 'PROJECT/Classes/**/*'
  # 资源文件
  # s.resources = ['PROJECT/Assets/*.{png,xib,storyboard,md,plist,xcassets,bundle}']

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  # 请把你的业务必须依赖写在这里，仅开发调试阶段使用的三方写在Podfile
  s.dependency 'TYModuleManager'    # 涂鸦的模块化工具
  s.dependency 'TuyaSmartHomeKit'   # 涂鸦智能SDK

end
