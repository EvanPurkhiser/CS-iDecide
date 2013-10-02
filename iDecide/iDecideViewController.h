//
//  iDecideViewController.h
//  iDecide
//
//  Created by Michael Collard on 9/23/13.
//  Copyright (c) 2013 collard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iDecideViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *magicButton;
@property (strong, nonatomic) NSString *originalMagicBUttonTitle;

- (IBAction)makeDecision:(id)sender;

- (void)resetButtonTitle;

@end
