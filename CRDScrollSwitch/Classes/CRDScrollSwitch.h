//
//  CRDScrollSwitch.h
//  CRDScrollSwitch
//
/*
 The MIT License
 
 Copyright (c) 2013 Corrado Ubezio
 https://github.com/corerd/
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

/*!
 CRDScrollSwitch Class Reference
 
 The `CRDScrollSwitch` inherits from `UIScrollView` and is a drop in replacement
 for `UISwitch` that allows to user to customize its appearance.
 
 As with `UISwitch`, when the user flips the switch control
 a `UIControlEventValueChanged` event is generated, which results in the control
 (if properly configured) sending an action message.
 
 Extra features
 --------------
 - Custom text label for ON state
 - Custom text label for OFF state
 - Custom background image
 
 Changing the background image, resizes the control frame to whatever you want.
 
 Usage
 -----
 To use it, add the files in the `Classes` folder to your project.
 
 Create a custom UISwitch with the following items:
 - A UIScrollView
 - A UIButton
 - Two UILabels
 - A background image
 - A Boolean value
 
 CREDITS
 -------
 [UISwitch - change from on/off to yes/no]
 ( http://stackoverflow.com/a/10437261 )
 
 [Creating a Custom UISwitch]
 ( http://www.raywenderlich.com/23424/photoshop-for-developers-creating-a-custom-uiswitch )
 */

#import <UIKit/UIKit.h>

@interface CRDScrollSwitch : UIScrollView

/*!
 A Boolean value that determines the on/off state of the switch.
 
 Set to `YES` By default.
 */
@property (nonatomic, getter=isOn) BOOL on;


/*!
 A `UIControl` object for preparing and dispatching action messages.
 
 Catch the `UIControlEventTouchUpInside` action message and
 dispatch it as `UIControlEventValueChanged` event.
 */
@property (nonatomic, weak) UIButton *slider;


/*!
 The text label for ON state.
 
 Set to `YES` By default.
 */
@property (nonatomic, strong) UILabel *onText;


/*!
 The text label for OFF state.
 
 Set to `NO` By default.
 */
@property (nonatomic, strong) UILabel *offText;

@end
