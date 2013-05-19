//
//  CRDScrollSwitch.h
//  ADVSwitch
//
//  Created by Corrado Ubezio on 07/05/13.
//  Copyright (c) 2013 Corerd. All rights reserved.
//

/*!
 Custom UISwitch
 
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

/// A Boolean value that determines the off/on state of the switch.
@property (nonatomic, getter=isOn) BOOL on;

@property (nonatomic, weak) UIButton *btnSwitch;

@property (nonatomic, strong) UILabel *onText;

@property (nonatomic, strong) UILabel *offText;

@end
