Pod::Spec.new do |s|
  s.name                  = "MuckoSwift"
  s.version               = "0.1.7"
  s.summary               = "MuckoSwift library"
  s.homepage              = "https://github.com/wookay/MuckoSwift"
  s.license               = "MIT"
  s.author                = { "WooKyoung Noh" => "wookay.noh@gmail.com" }
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '4.2' }
  s.swift_version         = '4.2'
  s.source                = { :git => "https://github.com/wookay/MuckoSwift.git", :tag => s.version }
  s.source_files          = "Sources/common/**/*.swift"
  s.ios.deployment_target = "8.0"
  s.ios.source_files      = "Sources/ios/*.{h,swift}"
  s.osx.deployment_target = "10.10"
  s.osx.source_files      = "Sources/osx/*.{h,swift}"
end
