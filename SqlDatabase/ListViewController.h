//
//  ListViewController.h
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPAdInfo.h"


@interface ListViewController : UIViewController <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *backButton;

//- (IBAction)goBack;

@property (weak, nonatomic) NSArray *adList;
@end
