#
#  Be sure to run `pod spec lint ExtendedAttributes.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "AMSMB2"
  s.version      = "3.3.1"
  s.summary      = "Swift framework to connect SMB2/3 shares"

  s.description  = <<-DESC
  This is small Swift library for iOS which wraps libsmb2 and allows to connect a SMB2/3 share and do file operation.
                   DESC

  s.license      = { :type => "LGPL-2.1", :file => "LICENSE" }

  s.authors             = { "Amir Abbas Mousavian" => "a.mosavian@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  s.swift_version = "5.0"
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.11"
  s.tvos.deployment_target = "9.0"
  # s.watchos.deployment_target = "2.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/xy00/AMSMB2.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.ios.vendored_libraries = "libsmb2/lib/libsmb2-ios.a"
  s.osx.vendored_libraries = "libsmb2/lib/libsmb2-macos.a"
  s.tvos.vendored_libraries = "libsmb2/lib/libsmb2-tvos.a"
  s.watchos.vendored_libraries = "libsmb2/lib/libsmb2-watchos.a"
  s.source_files  = "AMSMB2/**/*.swift"
  s.pod_target_xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_TARGET_SRCROOT)/libsmb2/lib", 'SWIFT_INCLUDE_PATHS' => "${PODS_TARGET_SRCROOT}/libsmb2/**" }
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/AMSMB2/libsmb2/lib", 'SWIFT_INCLUDE_PATHS' => "${PODS_ROOT}/AMSMB2/libsmb2/**" }
  #s.exclude_files = "AMSMB2/Exclude"
  # s.public_header_files = "libsmb2/include/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  s.preserve_paths = "libsmb2/include/**"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  s.frameworks = "Foundation"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
