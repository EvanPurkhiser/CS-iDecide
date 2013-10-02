#import <UIKit/UIKit.h>

@interface iDecideViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *magicButton;
@property (strong, nonatomic) NSString *originalMagicBUttonTitle;
@property (strong, nonatomic) NSTimer  *resetTimer;

- (IBAction)makeDecision:(id)sender;

- (void)resetButtonTitle;

@end
