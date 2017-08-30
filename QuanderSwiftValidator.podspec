Pod::Spec.new do |s|
  s.name         = "QuanderSwiftValidator"
  s.version      = "5.0.0"
  s.summary      = "A UITextField Validation library for Swift"
  s.homepage     = "https://github.com/jpotts18/SwiftValidator"
  s.homepage     = "https://github.com/Quander/SwiftValidator.git"
  s.screenshots  = "https://raw.githubusercontent.com/jpotts18/SwiftValidator/master/swift-validator-v2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author       = { "Jeff Potter" => "jeff.potter6@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target	= '10.0'
  s.source       = { :git => "https://github.com/Quander/SwiftValidator.git", :tag => "5.0.0" }
  s.source_files  = "SwiftValidator/**/*.swift"
  s.exclude_files = "Validator/AppDelegate.swift"
  s.frameworks   = ['Foundation', 'UIKit']
  s.requires_arc = true
end
