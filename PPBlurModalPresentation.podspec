Pod::Spec.new do |s|
s.name             = 'PPBlurModalPresentation'
s.version          = '1.0'
s.summary          = 'Blur disolve effect in presenting viewControllers.'

s.description      = <<-DESC
PPBlurModalPresentation allows you to make presentation blur transition using UIVisual effect and UIViewPropertyAnimator. Please see the exmaple for more information.
DESC

s.homepage         = 'https://github.com/PierrePerrin/PPBlurModalPresentation'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Pierre Perrin' => 'pierreperrin@outlook.com' }
s.source           = { :git => 'https://github.com/PierrePerrin/PPBlurModalPresentation.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'PPBlurModalPresentationExample/BlurModalPresentation.swift'

end
