//
//  SFViewController.m
//  SFEmptyBackButton
//
//  Created by Sergio Fernández Durán on 10/17/15.
//  Copyright © 2015 Sergio Fernández. All rights reserved.
//

#import "SFViewController.h"

@interface SFViewController ()

- (IBAction)buttonDidPress:(id)sender;

@end

@implementation SFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.title = @"SFEmptyBackButton";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDidPress:(id)sender
{
    SFViewController *viewController = [[SFViewController alloc] initWithNibName:NSStringFromClass(SFViewController.class)
                                                                          bundle:nil];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (NSString *)title
{
    return NSStringFromClass([SFViewController class]);
}

@end
