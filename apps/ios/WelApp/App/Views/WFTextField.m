// ==============================================================================
//
// This file is part of the WelFeed.
//
// Create by Edison Liu <yongjie@welfony>
// Copyright (c) 2012-2013 welfony.com
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//
// ==============================================================================

#import <QuartzCore/QuartzCore.h>

#import "WFTextField.h"

#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

@implementation WFTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.layer setBackgroundColor:RGB(255, 255, 255).CGColor];
        [self.layer setCornerRadius:5];
        [self.layer setBorderColor:RGB(230, 230, 230).CGColor];
        [self.layer setBorderWidth:1];
    }

    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    return CGRectMake(self.bounds.origin.x + 10,
                      self.bounds.origin.y + 10,
                      self.bounds.size.width,
                      self.bounds.size.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return CGRectMake(self.bounds.origin.x + 10,
                      self.bounds.origin.y + 10,
                      self.bounds.size.width,
                      self.bounds.size.height);
}

@end
