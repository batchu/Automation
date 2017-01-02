//
//  ListViewController.m
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/26/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import "ListViewController.h"
@class ViewController;

@interface ListViewController ()

@end

@implementation ListViewController

@synthesize adList;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    ViewController *startingViewController;
    ListViewController *destinationViewController;
    
    startingViewController = (ViewController *)segue.sourceViewController;
    
    destinationViewController = (ListViewController *)segue.destinationViewController;
    
    destinationViewController.adList = 
    
}*/


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



@end
