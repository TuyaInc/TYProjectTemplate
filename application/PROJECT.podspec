Pod::Spec.new do |s|
  s.name             = 'PROJECT'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PROJECT.'
  s.homepage         = '${GROUP_HOST}/${GROUP_NAME}/PROJECT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => '${GROUP_HOST}/${GROUP_NAME}/PROJECT.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  
  s.frameworks = 'UIKit', 'Foundation'

  # 源文件   source files
  s.source_files = 'PROJECT/Classes/**/*'
  
  # 资源文件  resources files
  # s.resources = ['PROJECT/Assets/*.{png,xib,storyboard,md,plist,xcassets,bundle}']
  
  # Only add your business necessary module here, add your debug necessary module to Podfile
  # 请把你的业务必须依赖写在这里，仅开发调试阶段使用的三方请写在Podfile
  s.dependency 'TYModuleManager'          # 涂鸦的模块化工具         module manager from TuyaInc
  s.dependency 'TuyaSmartHomeKit'         # 涂鸦智能SDK            SDK from TuyaInc
  s.dependency 'TYModuleServices'         # 涂鸦的业务开放的服务     public services from TuyaInc
  s.dependency 'TYUIKit'                  # 涂鸦开放的UI组件        ui kit from TuyaInc
  s.dependency 'TYFoundationKit'          # 涂鸦开放的基础组件       foundation kit from TuyaInc
  s.dependency 'TYTabBarController'       # 涂鸦的tab组件          tab controller from TuyaInc
  s.dependency 'TYNavigationController'   # 涂鸦的导航栏组件        navi controller from TuyaInc
  
  # s.dependency 'Masonry'

end
