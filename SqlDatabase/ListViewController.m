		//
//  ListViewController.m
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import "ListViewController.h"
#import "ViewController.h"
#import "BannerViewController.h"
#import "MPBannerAdDetailViewController.h"
#import "MPAdInfo.h"

@class ViewController;

@interface ListViewController ()

@end

@implementation ListViewController

@synthesize adList;



int rowNo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.navigationItem.title=@"Supported Ad Formats";
//    [self.backButton addTarget:self
//                   action:@selector(goBack)
//         forControlEvents:UIControlEventTouchUpInside];
    
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

//-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return @"Supported Ad Formats";
//}

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
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", actualKey];

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   NSDictionary *selectedItem = [adList objectAtIndex:indexPath.row];
//    NSLog(@"selected item value=%@", se);
   NSString  *key = [[selectedItem allKeys] objectAtIndex:0]; // Assumes 'message' is not empty
   NSDictionary *adTypeDict = [selectedItem objectForKey:key];
    	
    
    
    NSLog(@"ad name%@",key);
     NSLog(@"ad id%@",adTypeDict);
    
    MPAdInfo *info = [[MPAdInfo alloc] init];
    info.ID = [adTypeDict objectForKey:@"id"];
    info.title=key;
    info.type= (MPAdInfoType) [adTypeDict objectForKey:@"type"];
    
    UIViewController *detailViewController = nil;
    
    Class adTypeClass = NSClassFromString([adTypeDict objectForKey:@"class"]);
    
    detailViewController = [[adTypeClass alloc] initWithAdInfo:info];
    if (detailViewController) {
        [self presentViewController:detailViewController animated:YES completion:nil];
    }
}
//- (IBAction)goBack {
//    
//    
//    UIViewController *viewController = nil;
//    
//    
//    viewController = [[ViewController alloc] init];
//    if (viewController) {
//        [self presentViewController:viewController animated:YES completion:nil];
//    }
//    
//}


@end


