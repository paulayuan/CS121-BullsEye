//
//  PYViewController.m
//  BullsEye
//
//  Created by Paula Yuan on 9/3/14.
//  Copyright (c) 2014 Paula Yuan. All rights reserved.
//

#import "PYViewController.h"

@interface PYViewController ()

@end

@implementation PYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert
{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Hello,World"
                              message:@"This is my first app!"
                              delegate:nil
                              cancelButtonTitle:@"Awesome"
                              otherButtonTitles:nil];
    [alertView show];
}

@end
