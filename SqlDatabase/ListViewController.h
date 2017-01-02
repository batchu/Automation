//
//  ListViewController.h
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController <UITableViewDataSource>

@property (weak, nonatomic) NSArray *adList;

@end
