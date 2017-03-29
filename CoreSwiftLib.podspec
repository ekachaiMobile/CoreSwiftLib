
Pod::Spec.new do |s|


  s.name         = "CoreSwiftLib"
  s.version      = "1.0.5"
  s.summary      = "CoreSwiftLib"
  s.description  = "A short description of CoreSwiftLi A short description of CoreSwiftLi"
  s.homepage     = "https://github.com/ekachaiMobile/CoreSwiftLib"
  s.license      = "MIT"
  s.author             = { "ekachai" => "ekachai@23perspective.com" }
  s.source       = { :git => "https://github.com/ekachaiMobile/CoreSwiftLib.git", :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  
  s.source_files  = "CoreSwiftLib", "CoreSwiftLib/**/*.{h,m}"



end
