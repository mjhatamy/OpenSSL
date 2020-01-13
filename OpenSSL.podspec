Pod::Spec.new do |spec|

  spec.name         = "OpenSSL"
  spec.version      = "1.0.0"
  spec.summary      = "OpenSSL for iOS and OS X"
  spec.description  = "OpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support. Supports OSX and iOS including Simulator (armv7,armv7s,arm64,x86_64)."

  spec.homepage     = "https://github.com/mjhatamy/OpenSSL"
  spec.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE.txt' }

  spec.author             = { "mjhatamy" => "mjhatamy@gmail.com" }
  # Or just: spec.author    = "mjhatamy"
  # spec.authors            = { "mjhatamy" => "mjhatamy@gmail.com" }
  spec.social_media_url   = "https://twitter.com/mjhatamy"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  spec.source       = { :git => "https://github.com/mjhatamy/OpenSSL.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  
  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

  spec.requires_arc = false
  spec.default_subspec = 'Static'
  spec.ios.deployment_target = '6.0'
  spec.osx.deployment_target = '10.9'

  spec.subspec 'Static' do |sp|
    sp.ios.deployment_target = '6.0'
    sp.ios.source_files        = 'ios/include/openssl/**/*.h'
    sp.ios.public_header_files = 'ios/include/openssl/**/*.h'
    sp.ios.header_dir          = 'openssl'
    sp.ios.preserve_paths      = 'ios/lib/libcrypto.a', 'ios/lib/libssl.a'
    sp.ios.vendored_libraries  = 'ios/lib/libcrypto.a', 'ios/lib/libssl.a'

    sp.osx.deployment_target = '10.9'
    sp.osx.source_files        = 'macos/include/openssl/**/*.h'
    sp.osx.public_header_files = 'macos/include/openssl/**/*.h'
    sp.osx.header_dir          = 'openssl'
    sp.osx.preserve_paths      = 'macos/lib/libcrypto.a', 'macos/lib/libssl.a'
    sp.osx.vendored_libraries  = 'macos/lib/libcrypto.a', 'macos/lib/libssl.a'
  end

  spec.subspec 'Framework' do |sp|
    sp.ios.deployment_target = '8.0'
    sp.ios.vendored_frameworks = 'Frameworks/ios/OpenSSL.framework'
    sp.osx.deployment_target = '10.9'
    sp.osx.vendored_frameworks = 'Frameworks/macos/OpenSSL.framework'
  end

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
