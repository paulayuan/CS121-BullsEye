//
//  PYViewController.h
//  BullsEye
//
//  Created by Paula Yuan on 9/3/14.
//  Copyright (c) 2014 Paula Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PYViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;

- (IBAction)showAlert;
- (IBAction)startOver;
- (IBAction)sliderMoved:(UISlider *)slider;

@end


// Commit message:
// Added titles to alert, added bonus points, made game start over after alert was dismissed, made start over button work (or at least I think since quota was exceeded before I could test that)