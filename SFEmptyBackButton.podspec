Pod::Spec.new do |s|
  s.name             = "SFEmptyBackButton"
  s.version          = "1.0.0"
  s.summary          = "Remove back title from UIViewControllers."

  s.description      = <<-DESC
                        Useful library to remove text from back button and
                        align the title in the center of UIViewController.
                       DESC

  s.homepage         = "https://github.com/fdzsergio/SFEmptyBackButton"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sergio Fernández" => "fdz.sergio@gmail.com" }
  s.source           = { :git => "https://github.com/fdzsergio/SFEmptyBackButton.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/fdzsergio'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.frameworks = 'UIKit'
  s.dependency 'Aspects', '~> 1.4'
end
