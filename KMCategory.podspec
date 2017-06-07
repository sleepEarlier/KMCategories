

Pod::Spec.new do |s|

  s.name         = "KMCategory"
  s.version      = "0.1.2"
  s.summary      = "KMCategory provide some categories methods and some simple utls"

  s.description  = <<-DESC
                  This provide some frequently used categories methods
                   DESC

  s.homepage     = "https://github.com/sleepEarlier/KMCategories"

  s.license      = { :type => "MIT", :file => "LICENSE"}

  s.author       = { "sleepEarlier" => "jky130@qq.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/sleepEarlier/KMCategories.git", :tag => s.version }

  s.source_files  = "KMCategory/Classes/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  s.public_header_files = "KMCategory/Classes/KMCategories.h","KMCategory/Class/**/*.h"

  s.ios.deployment_target = "7.0"

  s.frameworks = "UIKit", "Foundation"

  s.requires_arc = true

end
