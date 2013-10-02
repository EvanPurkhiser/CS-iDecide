//
//  iDecideViewController.m
//  iDecide
//
//  Created by Michael Collard on 9/23/13.
//  Copyright (c) 2013 collard. All rights reserved.
//

#import "iDecideViewController.h"
#import <stdlib.h>

@interface iDecideViewController ()

@end

@implementation iDecideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Keep track of the old button title
    self.originalMagicBUttonTitle = self.magicButton.titleLabel.text;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    // Magic 8 ball style shaking for a answer
    if (motion == UIEventSubtypeMotionShake)
    {
        [self makeDecision:self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeDecision:(id)sender
{
    NSArray *responses = @[@"It is certain", @"It is decidedly so", @"Without a doubt",
                           @"Yes definitely", @"You may rely on it", @"As I see it yes",
                           @"Most likely", @"Outlook good", @"Yes", @"Signs point to yes",
                           @"Reply hazy try again", @"Ask again later", @"Better not tell you now",
                           @"Cannot predict now", @"Concentrate and ask again", @"Don't count on it",
                           @"My reply is no", @"My sources say no", @"Outlook not so good",
                           @"Very doubtful"];

    // Get a random response. Let fate be with ye
    NSString *response = [responses objectAtIndex:arc4random_uniform(responses.count)];

    // Set the button title, we will reset this on a timer
    [self.magicButton setTitle:response forState:UIControlStateNormal];

    // Stop previous button reset timers
    [self.resetTimer invalidate];

    // Reset the button text in 5 seconds
    self.resetTimer = [NSTimer scheduledTimerWithTimeInterval:5
                                                     target:self selector:@selector(resetButtonTitle)
                                                     userInfo:nil repeats:NO];
}

- (void)resetButtonTitle
{
    [self.magicButton setTitle:self.originalMagicBUttonTitle forState:UIControlStateNormal];
}

@end
