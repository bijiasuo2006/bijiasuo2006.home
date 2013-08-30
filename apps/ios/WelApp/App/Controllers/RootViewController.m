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

#import "RootViewController.h"
#import "WFTextField.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    WFTextField *txt = [[WFTextField alloc] initWithFrame:CGRectMake(30, 100, 220, 34)];
    txt.placeholder = @"请输入密码";
    txt.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:txt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
