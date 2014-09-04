//
//  PYViewController.h
//  BullsEye
//
//  Created by Paula Yuan on 9/3/14.
//  Copyright (c) 2014 Paula Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PYViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISlider *slider;

- (IBAction)showAlert;
- (IBAction)sliderMoved:(UISlider *)slider;

@end
