//
//  CustomWindow.m
//  VoiceOverTesting
//
//  Created by Aaron Stephenson on 31/10/19.
//  Copyright © 2019 Aaron Stephenson. All rights reserved.
//

#import "CustomWindow.h"

@implementation CustomWindow

- (void)becomeKeyWindow
{
    [super becomeKeyWindow];
    [self configureOverlayButton];
 }

//Configure inspector button appearance
- (void)configureOverlayButton
{
    if (!self.overlayButton)
    {
        self.overlayButton = [[UIButton alloc]initWithFrame:CGRectMake(40, 200, 100, 50)];
    }
    [self.overlayButton setTitle:@"Test Button" forState:UIControlStateNormal];
    self.overlayButton.accessibilityTraits |= UIAccessibilityTraitButton;
    [self addSubview:self.overlayButton];
    
    [self.overlayButton addTarget:self action:@selector(doAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)doAction:(id)sender
{
    NSLog(@"Console message");
}

@end
