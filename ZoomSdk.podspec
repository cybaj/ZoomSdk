Pod::Spec.new do |spec|

  spec.name         = "ZoomSdk"
  spec.version      = "5.0.24433.0616"
  spec.summary      = "Original framework for Zoom.us service"

  spec.homepage     = "https://github.com/zoom/zoom-sdk-ios"

  spec.license      = { :type => "Commercial", :file => "LICENSE.md" }

  spec.author             = { "cybaj" => "cybaj@naver.com" }

  spec.ios.deployment_target = "10.0"

  spec.source       = { :git => "https://github.com/cybaj/ZoomSdk.git", :tag => "#{spec.version}" }


  spec.libraries = "z", "c++", "sqlite3"
  spec.frameworks = "Foundation", "UIKit", "VideoToolbox", "CoreBluetooth", "ReplayKit", "CoreMotion"

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |subspec|
    subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "MobileRTC.framework"

    subspec.ios.resource = "MobileRTCResources.bundle"
  end


  # Uncomment when this library will be support Swift 5 or higher
  # spec.subspec 'ShareScreen' do |subspec|
  #   subspec.ios.dependency 'Core'

  #   subspec.ios.source_files            = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.public_header_files     = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.vendored_frameworks     = "MobileRTCScreenShare.framework"
  # end

end
