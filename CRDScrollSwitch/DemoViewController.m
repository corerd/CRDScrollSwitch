//
//  DemoViewController.m
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

#import "DemoViewController.h"

@interface DemoViewController ()

@end


#pragma mark -
#pragma mark Initialization code

@implementation DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Setup default CRDScrollSwitch
    [self.defaultScrollSwitch.slider addTarget:self
                                       action:@selector(defaultSwitchValueChanged:)
                             forControlEvents:UIControlEventValueChanged];

    // Setup custom CRDScrollSwitch
    self.customScrollSwitch.on = NO;
    [self.customScrollSwitch.onText setText:@"SHOW"];
    [self.customScrollSwitch.offText setText:@"HIDE"];
    [self.customScrollSwitch.slider addTarget:self
                                    action:@selector(customSwitchValueChanged:)
                          forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Actions

-(void)defaultSwitchValueChanged:(id)sender
{
    if ([self.defaultScrollSwitch isOn]) {
        [self.lblDefaultSwitchState setText:@"On State"];
    }
    else {
        [self.lblDefaultSwitchState setText:@"Off State"];
    }
}

-(void)customSwitchValueChanged:(id)sender
{
    if ([self.customScrollSwitch isOn]) {
        [self.lblCustomSwitchState setText:@"On State"];
    }
    else {
        [self.lblCustomSwitchState setText:@"Off State"];
    }
}

@end
