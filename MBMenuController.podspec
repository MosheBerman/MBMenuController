Pod::Spec.new do |s|

  s.name         = "MBMenuController"
  s.version      = "2.0.2"
  s.summary      = "A custom action sheet for iOS."
  s.description  = <<-DESC
	MBMenuController is similar to UIActionSheet. It's something I rolled for a client project, although it has a few rough edges. 
                   DESC
  s.homepage     = "https://github.com/MosheBerman/MBCalendarKit"
  s.screenshots  = "https://raw.github.com/MosheBerman/MBCalendarKit/master/Promo.png"
  s.author       = {"Moshe Berman" => "moshberm@gmail.com" }
  s.license 	 = 'MIT'
  s.platform     = :ios, '7.0'
  s.source       = {:git => "https://github.com/MosheBerman/MBMenuController.git", :tag => s.version.to_s} 
  s.source_files  = 'Classes', 'MBMenuController/Button Menu/*.{h,m}'
  s.frameworks = 'QuartzCore'
  s.requires_arc = true
end
