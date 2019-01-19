Pod::Spec.new do |s|
    s.name             = 'PROJECT'
    s.version          = '0.1.0'
    s.summary          = 'A short description of PROJECT.'
    s.homepage         = 'https://gitlab.com/${GROUP_NAME}/PROJECT'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
    s.source           = { :git => 'https://gitlab.com/${GROUP_NAME}/PROJECT.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '8.0'
    
    # 源文件
    s.source_files = 'PROJECT/Classes/**/*'
    # 资源文件
    s.resource_bundles = {
        'PROJECT_UISkin' => ['PROJECT/Assets/*']
    }
    
    # s.public_header_files = 'PROJECT/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    
    # 请把你的业务必须依赖写在这里，仅开发调试阶段使用的三方写在Podfile
    s.dependency 'TYSmartHouseUISkeleton'   # 涂鸦首页的 UI 骨架，这里定义了你所需实现的各种视图
    s.dependency 'TYUIKit'                  # 涂鸦开放的UI组件，如果未使用，可以去除
    
    s.prefix_header_contents = <<-EOS
    #import "EXTScope.h"
    #import "TYUIKit.h"
    #import "NSArray+TYSafe.h"
    #import "UIImage+PROJECT_Bundle.h"
    #import "TYUIKit.h"
    EOS
end
