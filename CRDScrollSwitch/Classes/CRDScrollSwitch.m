//
//  CRDScrollSwitch.m
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

#import "CRDScrollSwitch.h"
#import <QuartzCore/QuartzCore.h>


@implementation CRDScrollSwitch
{
    CGFloat viewWidth;
    CGFloat viewHeight;
}

@synthesize on = _onState;


#pragma mark -
#pragma mark Initialization code

// Override initWithFrame: if you add the view programmatically.
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self commonInit];
    }
    return self;
}

// Override initWithCoder: if you're loading it from a nib or storyboard.
- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        // Initialization code
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    // Get the background image
    UIImage *btnBgImage = [UIImage imageNamed:@"CRDScrollSwitch.png"];
    
    // UIButton setup 
    self.slider = [UIButton buttonWithType:UIButtonTypeCustom];
    self.slider.frame = CGRectMake(0, 0,
                                      btnBgImage.size.width,
                                      btnBgImage.size.height);
    [self.slider setBackgroundImage:btnBgImage
                              forState:UIControlStateNormal];
    [self.slider setBackgroundImage:btnBgImage
                              forState:UIControlStateHighlighted];
    [self.slider addTarget:self
                  action:@selector(swToggleState:)
        forControlEvents:UIControlEventTouchUpInside];
    
    // Setup the view geometry
    CGFloat handleRadius = self.slider.frame.size.height / 2;
    viewHeight = handleRadius * 2;
    viewWidth = self.slider.frame.size.width/2 + handleRadius;

    // Setup Label for ON text
    CGRect  onTextRect = CGRectMake(handleRadius*0.50, 0,
                                    viewWidth - handleRadius*2.50, viewHeight);
    [self setOnText:[[UILabel alloc] initWithFrame:onTextRect]];
    [self.onText setBackgroundColor:[UIColor clearColor]];
    [self.onText setTextAlignment: NSTextAlignmentCenter];
    [self.onText setText:NSLocalizedString(@"YES", @"Switch localized string")];
    [self.onText setTextColor:[UIColor whiteColor]];
    [self.onText setFont:[UIFont boldSystemFontOfSize:15]];
    [self.onText setShadowColor:[UIColor colorWithRed:0.0/255
                                                green:110.0/255
                                                 blue:200.0/255
                                                alpha:1.0]];
    [self.onText setShadowOffset:CGSizeMake(0, -1)];
    [self.slider addSubview:self.onText];

    // Setup Label for OFF text
    CGRect  offTextRect = CGRectMake(viewWidth + handleRadius*0.25, 0,
                                     viewWidth - handleRadius*2.75, viewHeight);
    [self setOffText:[[UILabel alloc] initWithFrame:offTextRect]];
    [self.offText setBackgroundColor:[UIColor clearColor]];
    [self.offText setTextAlignment: NSTextAlignmentCenter];
    [self.offText setText: NSLocalizedString(@"NO", @"Switch localized string")];
    [self.offText setTextColor:[UIColor grayColor]];
    [self.offText setFont:[UIFont boldSystemFontOfSize:15]];
    [self.offText setShadowColor:[UIColor colorWithRed:245.0/255
                                                 green:245.0/255
                                                  blue:245.0/255
                                                 alpha:1.0]];
    [self.offText setShadowOffset:CGSizeMake(0, -1)];
    [self.slider addSubview:self.offText];

    [self addSubview:self.slider];
     
    // The below statement changes the ScrollView
    // to have rounded ends like the UISwitch.
    [self.layer setCornerRadius:viewHeight/2];

    // Set the view thickness and border color
    [self.layer setBorderWidth:1.0];
    [self.layer setBorderColor:[UIColor colorWithRed:135.0/255
                                               green:135.0/255
                                                blue:135.0/255
                                               alpha:1.0].CGColor];

    // Set default switch state
    _onState = YES;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [self setOn:_onState];
}


#pragma mark -
#pragma mark Accessor methods

- (void)setOn:(BOOL)swState
{
    _onState = swState;
    
    // The diameter of the switch handle is given by the view height,
    // then we have to scroll the image by view widh minus view height
    // to put the switch in the off position.
    CGPoint scrollPoint = CGPointMake((_onState)? 0.0:
                                      viewWidth - viewHeight,
                                      0.0);
    [self setContentOffset:scrollPoint animated:YES];
}


#pragma mark -
#pragma mark Actions

/*!
 Action handler for `UIControlEventTouchUpInside`.
 
 Toggle the switch state and dispatch the action message for
 `UIControlEventValueChanged` event.
 */
-(void)swToggleState:(id)sender
{
    [self setOn:![self isOn]];
    
    [self.slider sendActionsForControlEvents:UIControlEventValueChanged];
}


@end
