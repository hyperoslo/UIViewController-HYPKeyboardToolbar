# UIViewController-HYPKeyboardToolbar

An easy way to reposition a ViewController's UIToolbar when showing the keyboard.

![Example](https://raw.githubusercontent.com/hyperoslo/UIViewController-HYPKeyboardToolbar/master/Images/keyboard-v2.gif)

## Usage

```objc
#import "UIViewController+HYPKeyboardToolbar.h"

// Usually in init
- (void)hyp_addKeyboardToolbarObservers;

// Usually in dealloc
- (void)hyp_removeKeyboardToolbarObservers;
```

## Installation

**UIViewController-HYPKeyboardToolbar** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIViewController-HYPKeyboardToolbar'
```

## Author

Hyper Interaktiv AS, ios@hyper.no

## License

**UIViewController-HYPKeyboardToolbar** is available under the MIT license. See the LICENSE file for more info.
