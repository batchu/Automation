		//
//  ListViewController.m
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import "ListViewController.h"
#import "BannerViewController.h"
#import "MPAdInfo.h"

@class ViewController;

@interface ListViewController ()

@end

//@implementation NSString (EnumParser)
//
//- (MPAdInfoType)AdTypeEnumFromString{
//    NSDictionary<NSString*,NSNumber*> *adTypes = @{
//                                                  @"Banner": @(Banner),
//                                                  @"Interstitial": @(Interstitial),
//                                                  @"Native": @(Native),
//                                                  @"NativeVideo": @(NativeVideo),
//                                                  @"RewardedVideo": @(RewardedVideo),
//                                                  };
//    return adTypes[self].integerValue;
//}
//
//@end

@implementation ListViewController

@synthesize adList;
@synthesize bannerId;

//added on 3/1/2017
@synthesize adId;
@synthesize title;
//@synthesize type;

int rowNo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    int count = (int)[adList count];
    NSLog(@"Count = %d", count);
    return count;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Items";
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"List"];
    
    NSDictionary *specificDict;
    NSString *actualKey;
    NSString *actualValue;
    
    specificDict = [adList objectAtIndex:indexPath.row];
    
    for (id key in specificDict)
    {
        actualKey = key;
    }
    
    actualValue = [specificDict objectForKey:actualKey];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ = %@", actualKey, actualValue];

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   NSDictionary *selectedItem = [adList objectAtIndex:indexPath.row];
   
   NSString  *key = [[selectedItem allKeys] objectAtIndex:0]; // Assumes 'message' is not empty
    NSString *value = [selectedItem objectForKey:key];
    NSLog(@"ad name%@",key);
     NSLog(@"ad id%@",value);
    self.bannerId=value;
    
    MPAdInfo *info = [[MPAdInfo alloc] init];
    info.ID = value;
    info.title=key;
    info.type=0;
    
    UIViewController *detailViewController = nil;
    
    detailViewController = [[MPBannerAdDetailViewController alloc] initWithAdInfo:info];
    
    if (detailViewController) {
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    
    
    // new lines of code added on 3/1/2017
   /*
    self.adId = value;
    self.title = key;
    self.type = [key AdTypeEnumFromString];
    [ListViewController infoWithTitle:self.title ID:self.adId type:*(self.type)];
    
    
    UIViewController *detailViewController = nil;
    ListViewController *info ;
    */
     
     /*
    if([key  isEqual: @"banner"])
    {
          //  detailViewController = [[MPBannerAdDetailViewController alloc] initWithAdInfo:info];
    }
//                case Interstitial:
//            detailViewController = [[MPInterstitialAdDetailViewController alloc] initWithAdInfo:info];
//            break;
//        case RewardedVideo:
//            detailViewController = [[MPRewardedVideoAdDetailViewController alloc] initWithAdInfo:info];
//            break;
//        case Native:
//            detailViewController = [[MPNativeAdDetailViewController alloc] initWithAdInfo:info];
//            break;
//        case NativeVideo:
//            detailViewController = [[MPNativeAdPlacerCollectionViewController alloc] initWithAdInfo:info];
//            break;
//        case MPAdInfoNativeTableViewPlacer:
//            detailViewController = [[MPNativeAdPlacerTableViewController alloc] initWithAdInfo:info];
//            break;
//        case MPAdInfoNativePageViewControllerPlacer:
//            detailViewController = [[MPNativeAdPlacerPageViewController alloc] initWithAdInfo:info];
//            break;
//        default:
//            break;
    
    
    if (detailViewController) {
        [self.navigationController pushViewController:detailViewController animated:YES];
    }

    
    
}

    
   */
    
    // commented to test new changes
      NSLog(@"bannerId value is %@",self.bannerId);
    
//    [self performSegueWithIdentifier:@"bannerIdsequeId" sender:self];
}
    
/*

+ (ListViewController *)infoWithTitle:(NSString *)title ID:(NSString *)ID type:(MPAdInfoType)type {
    ListViewController *info = [[ListViewController alloc] init];
    info.title = title;
    info.adId = ID;
    info.type = &(type);
    return info;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self != nil)
    {
        self.title = [aDecoder decodeObjectForKey:@"title"];
        self.adId = [aDecoder decodeObjectForKey:@"ID"];
        self.type = [aDecoder decodeIntegerForKey:@"type"];
        self.keywords = [aDecoder decodeObjectForKey:@"keywords"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.adId forKey:@"ID"];
    [aCoder encodeInteger:self.type forKey:@"type"];
    [aCoder encodeObject:((self.keywords != nil) ? self.keywords : @"") forKey:@"keywords"];
}

*/
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    BannerViewController * destinationViewController = (BannerViewController *) segue.destinationViewController;
//    
//    destinationViewController.bannerId = self.bannerId;
//}



    @end


