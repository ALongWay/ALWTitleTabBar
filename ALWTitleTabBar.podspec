Pod::Spec.new do |s|
  s.name             = 'ALWTitleTabBar'
  s.version          = '0.1.0'
  s.summary          = 'A configurable and brief title tab bar.'

  s.homepage         = 'https://github.com/ALongWay/ALWTitleTabBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lisong' => '370381830@qq.com' }
  s.source           = { :git => 'https://github.com/ALongWay/ALWTitleTabBar.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'ALWTitleTabBar/Classes/**/*'

end
