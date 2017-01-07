//
//  ListViewController.h
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPBannerAdDetailViewController.h"
//typedef NS_ENUM(NSInteger, MPAdInfoType) {
//    Banner = 0,
//    Interstitial = 1,
//    Native =2,
//    NativeVideo =3,
//    RewardedVideo = 4
//};



@interface ListViewController : UIViewController <UITableViewDataSource>

@property (weak, nonatomic) NSArray *adList;
@property (weak, nonatomic) NSString *bannerId;

////added these lines of code on 3/1/2017
@property (weak, nonatomic) NSString *adId;
@property (weak, nonatomic) NSString *title;
//@property (nonatomic, assign) MPAdInfoType *type;
//@property (nonatomic, copy) NSString *keywords;
//
//
//+ (ListViewController *)infoWithTitle:(NSString *)title ID:(NSString *)ID type:(MPAdInfoType)type;


@end
