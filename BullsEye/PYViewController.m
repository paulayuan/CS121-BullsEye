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
{
    int _currentValue;
    int _targetValue;
    int _score;
    int _round;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	_currentValue = 50;
    [self startNewRound];
    [self updateLabels];
}

- (void)startNewRound
{
    _round += 1;
    _targetValue = 1 + arc4random_uniform(100);
    self.slider.value = _currentValue;
}

- (void)updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d", _targetValue];
    self.scoreLabel.text = [NSString stringWithFormat:@"%d", _score];
    self.roundLabel.text = [NSString stringWithFormat:@"%d", _round];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert
{
    int difference = abs(_targetValue - _currentValue);
    int points = 100 - difference;
    _score += points;
    
    NSString *message = [NSString stringWithFormat:
                         @"You scored %d points", points];
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Hello, World"
                              message:message
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
    
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)sliderMoved:(UISlider *)slider
{
    _currentValue = lroundf(slider.value);
}

@end
