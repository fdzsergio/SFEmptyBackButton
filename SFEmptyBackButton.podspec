Pod::Spec.new do |s|
  s.name             = "SFEmptyBackButton"
  s.version          = "2.1.0"
  s.summary          = "Remove back title from UIViewControllers."

  s.description      = <<-DESC
                        Useful library to remove text from back button and
                        align the title in the center of UIViewController.
                       DESC

  s.homepage         = "https://github.com/fdzsergio/SFEmptyBackButton"
  s.screenshots      = "https://raw.githubusercontent.com/fdzsergio/SFEmptyBackButton/master/Screenshots/1.png", "https://raw.githubusercontent.com/fdzsergio/SFEmptyBackButton/master/Screenshots/2.png", "https://raw.githubusercontent.com/fdzsergio/SFEmptyBackButton/master/Screenshots/3.png", "https://raw.githubusercontent.com/fdzsergio/SFEmptyBackButton/master/Screenshots/4.png"
  s.license          = 'MIT'
  s.author           = { "Sergio Fernández" => "fdz.sergio@gmail.com" }
  s.source           = { :git => "https://github.com/fdzsergio/SFEmptyBackButton.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/fdzsergio'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Source/*'

  s.frameworks = 'UIKit'
  s.dependency 'Aspects', '~> 1.4'
end
