Pod::Spec.new do |s|
  s.name                  = "MuckoSwift"
  s.version               = "0.1.3"
  s.summary               = "MuckoSwift library"
  s.homepage              = "https://github.com/wookay/MuckoSwift"
  s.license               = "MIT"
  s.author                = { "WooKyoung Noh" => "wookay.noh@gmail.com" }
  s.osx.deployment_target = "10.10"
  s.source                = { :git => "https://github.com/wookay/MuckoSwift.git", :tag => s.version }
  s.source_files          = "Sources/**/*.{h,swift}"
  s.public_header_files   = "Sources/MuckoSwift.h"
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '4.0' }
  s.swift_version         = '4.0'
  s.static_framework      = true
end
