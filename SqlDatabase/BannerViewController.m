

#import "BannerViewController.h"
@class ViewController;

@interface BannerViewController ()

@end

@implementation BannerViewController

@synthesize bannerId;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     NSLog(@"from viewDidLoad of BannerViewController %@",bannerId);
}





@end
