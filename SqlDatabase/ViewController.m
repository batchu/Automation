//
//  ViewController.m
//  SqlDatabase
//
//  Created by Pooja Shashidhar on 12/13/16.
//  Copyright © 2016 Pooja Shashidhar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize selectedNetwork;
@synthesize adList;

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    return [adapterCollection count];
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [adapterCollection objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [selectedNetwork setText:[NSString stringWithFormat:@"Selected Adapter: %@",[adapterCollection objectAtIndex:row]]];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    
    for (id key in dict) {
       // NSLog(@"key: %@", key );
    
        NSDictionary *secondDict = [dict objectForKey:key];
        //NSLog(@"Row = %d", (int)row);
    
        NSLog(@"String from adapterCollection = %@", [adapterCollection objectAtIndex:row]);
        
        NSArray *arrayValues=[[NSArray alloc] initWithArray:[secondDict valueForKey:[adapterCollection objectAtIndex:row]]];
        //NSLog(@"arrayValues = %@",arrayValues);
        
        adList = arrayValues;
        
        int count = (int)[arrayValues count];
        
        NSLog(@"Size of array = %d", count);
        
        NSDictionary *specificDict;
        NSString *actualKey;
        NSString *actualValue;
        
        for (int i = 0; i < count; i++)
        {
            specificDict = [arrayValues objectAtIndex:i];
            for (id key in specificDict)
            {
                actualKey = key;
            }
            
            actualValue = [specificDict objectForKey:actualKey];
            NSLog(@" Item%d - Key %@, Value %@", i, actualKey, actualValue);
        }

    }
}


- (void)viewDidLoad {
    adapterCollection =[[NSArray alloc]initWithObjects:@"",@"Millennial Media",@"AdMob",@"FAN",@"AdColony",@"Chartboost",@"Conversant",@"Tapjoy",@"Yahoo",@"Unity Ads",@"Vungle", nil];
    

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 
 ViewController *startingViewController;
 ListViewController *destinationViewController;
 
 startingViewController = (ViewController *)segue.sourceViewController;
 
 destinationViewController = (ListViewController *)segue.destinationViewController;
 
 destinationViewController.adList = startingViewController.adList;
 
}

@end
