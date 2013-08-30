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

#import "AppDelegate.h"


@implementation UIColor (RFKit)

#pragma mark HexColor

- (UIColor *)initWithRGBHex:(NSInteger)hexValue alpha:(CGFloat)alpha
{
	return [self initWithRed:((hexValue & 0xFF0000) >> 16) / 255.0f
					   green:((hexValue & 0xFF00) >> 8) / 255.0f
						blue:(hexValue & 0xFF) / 255.0f
					   alpha:alpha];
}

+ (UIColor *)colorWithRGBHex:(NSInteger)hexValue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((hexValue & 0xFF0000) >> 16) / 255.0f
						   green:((hexValue & 0xFF00) >> 8) / 255.0f
							blue:(hexValue & 0xFF) / 255.0f
						   alpha:alpha];
}

+ (UIColor *)colorWithRGBHex:(NSInteger)hexValue
{
    return [UIColor colorWithRGBHex:hexValue alpha:1.0f];
}

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self generalAppearanceSetup];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)generalAppearanceSetup
{
    id navigationBarAppearance = [UINavigationBar appearance];
    [navigationBarAppearance setBackgroundImage:[UIImage imageNamed:@"navigationBG"] forBarMetrics:UIBarMetricsDefault];
    [navigationBarAppearance setTitleTextAttributes:@{
                           UITextAttributeTextColor: [UIColor colorWithRGBHex:0x2384d0],
                     UITextAttributeTextShadowColor: [UIColor colorWithRGBHex:0xfff9fa]
     }];
    [navigationBarAppearance setTitleVerticalPositionAdjustment:2 forBarMetrics:UIBarMetricsDefault];
    if ([UINavigationBar instancesRespondToSelector:@selector(setShadowImage:)]) {
        [navigationBarAppearance setShadowImage:[[UIImage alloc] init]];
    }

    id apr = [UIBarButtonItem appearance];
    [apr setTintColor:[UIColor colorWithRGBHex:0x2384d0]];
    [apr setBackgroundImage:[[UIImage imageNamed:@"navigationBarButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(1, 1, 1, 1)]
                   forState:UIControlStateNormal
                 barMetrics:UIBarMetricsDefault];
    [apr setBackButtonBackgroundImage:[UIImage imageNamed:@"navigationBarButton"]
                             forState:UIControlStateNormal
                           barMetrics:UIBarMetricsDefault];
}

@end
