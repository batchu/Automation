

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


-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        UIView *xibView = [[[NSBundle mainBundle] loadNibNamed:@"MPBannerAdDetailViewController"
                                                         owner:self
                                                       options:nil] objectAtIndex:0];
        xibView.frame = self.view.bounds;
        xibView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.view addSubview: xibView];
    }
    return self;
}


@end
