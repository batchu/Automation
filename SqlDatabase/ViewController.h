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
    
    
    //Adding back button logic
    UIBarButtonItem *backButton;
    UINavigationItem *navItem;
    UINavigationBar *navBar;

}

-(void)backButtonPressed;
//not required for now
//@property(nonatomic,retain)UINavigationBar *navBar;

@property (weak, nonatomic) IBOutlet UIPickerView *networkPicker;

@property (weak, nonatomic) IBOutlet UILabel *selectedNetwork;

@property (nonatomic) NSArray *adList;




@end

