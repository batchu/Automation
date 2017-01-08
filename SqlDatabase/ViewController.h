//
//  ViewController.h
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/13/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"
#import "ListViewController.h"

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *adapterCollection;
    //NSArray *adList;

}


@property (weak, nonatomic) IBOutlet UIPickerView *networkPicker;

@property (weak, nonatomic) IBOutlet UILabel *selectedNetwork;

@property (nonatomic) NSArray *adList;




@end

