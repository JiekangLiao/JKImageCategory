Pod::Spec.new do |s|
  s.name             = 'JKImageCategory'
  s.version          = '0.0.1'
  s.summary          = 'UIImage category'
 
  s.description      = <<-DESC
Create stinrg image or viewTo image!
                       DESC
 
  s.homepage         = 'https://github.com/JiekangLiao/JKImageCategory'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jack Liao' => '937902524@qq.com' }
  s.source           = { :git => 'https://github.com/JiekangLiao/JKImageCategory.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'JKImageCategory/*.swift'
 
end
