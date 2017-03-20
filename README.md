# PPMusicImageShadow

## Synopsis

PPBlurModalPresentation allows you to make presentation blur transition using UIVisual effect and UIViewPropertyAnimator.

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```
To integrate PPBlurModalPresentation into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'PPBlurModalPresentation'
end
```

### Manually

If you prefer you can clone the project, and get the BlurModalPresentation.swift file.

## Code Example

```swift
import PPBlurModalPresentation
class ViewController: UIViewController,UIViewControllerTransitioningDelegate {

let blurModalPresentation = BlurModalPresentation()

override func viewDidLoad() {
super.viewDidLoad()

}

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

segue.destination.transitioningDelegate = self

}

override func viewDidAppear(_ animated: Bool) {
super.viewDidAppear(animated)
}

func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{

return blurModalPresentation
}


func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?{

return blurModalPresentation
}

}
```
