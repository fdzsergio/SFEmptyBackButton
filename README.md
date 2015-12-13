# SFEmptyBackButton

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/SFEmptyBackButton.svg?style=flat)](http://cocoapods.org/pods/SFEmptyBackButton)
[![License](https://img.shields.io/cocoapods/l/SFEmptyBackButton.svg?style=flat)](http://cocoapods.org/pods/SFEmptyBackButton)
[![Platform](https://img.shields.io/cocoapods/p/SFEmptyBackButton.svg?style=flat)](http://cocoapods.org/pods/SFEmptyBackButton)

## Usage

To remove the title back button is only necessary to invoke:
```obj-c
// Magic happens here
[SFEmptyBackButton removeTitleFromAllViewControllers];
```

If you only want to delete the title in certain views invokes this:
```obj-c
[SFEmptyBackButton removeTitleFromViewControllers:@[YourViewController.class, AnotherViewController.class];
```

## How It Works

When you have a view with a very long title like this:

<p align="center">  
	<img src="./Screenshots/1.png" alt="The Problem" title="SFEmptyBackButton">
</p>

And navigate to another view with a very long title the following occurs:

<p align="center">  
	<img src="./Screenshots/2.png" alt="The Problem" title="SFEmptyBackButton">
</p>

If you delete the title back button invoking:
```obj-c
[[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-100, 0) forBarMetrics:UIBarMetricsDefault];
```

Most likely this will happen:
<p align="center">  
	<img src="./Screenshots/3.png" alt="The Problem" title="SFEmptyBackButton">
</p>

But if you rewrite back button with empty title in all views:

```obj-c
UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

[self.navigationItem setBackBarButtonItem:backButtonItem];
```

You get the desired effect:

<p align="center">  
	<img src="./Screenshots/4.png" alt="The Problem" title="SFEmptyBackButton">
</p>

## Installation

### CocoaPods

SFEmptyBackButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SFEmptyBackButton"
```

### Carthage

You can also install it via [Carthage](https://github.com/Carthage/Carthage). To do so, add the following to your Cartfile:

```ruby
github "fdzsergio/SFEmptyBackButton"
```

## Author

Sergio Fernández, fdz.sergio@gmail.com

## Acknowledgement

This [CocoaPod](https://cocoapods.org/pods/SFEmptyBackButton) has been made possible thanks to [Aspects](https://github.com/steipete/Aspects) by [@steipete](http://petersteinberger.com) 

## License

SFEmptyBackButton is available under the MIT license. See the LICENSE file for more info.
