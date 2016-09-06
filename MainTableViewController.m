//
//  CalculatorTableViewController.m
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "ValueTableViewController.h"
#import "MainTableViewController.h"
#import "Cell.h"



@interface MainTableViewController () <UIPopoverPresentationControllerDelegate, ValueTableDelegate>


@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;


@property (strong, nonatomic) NSMutableArray *visibleValueCells;
@property (strong, nonatomic) NSMutableArray *remainingValueTypes;
@property (strong, nonatomic) NSDictionary *allValueTypes;



@end

@implementation MainTableViewController


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.title = @"High Voltage";
    self.visibleValueCells = [[NSMutableArray alloc] init];
    self.allValueTypes = @{@"Volts": @"volts (V)", @"Watts": @"watts (W)", @"Amps": @"amps (A)", @"Ohms": @"ohms (Ω)"};
    self.remainingValueTypes = [[self.allValueTypes allKeys] mutableCopy];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"valueTypePopoverSegue"])
    {
        ValueTableViewController *valueTableVC = [segue destinationViewController];
        valueTableVC.valueTypes = self.remainingValueTypes;
        
        valueTableVC.popoverPresentationController.delegate = self;
        valueTableVC.delegate = self;
        
        
        int contentHeight = 44.0f * self.allValueTypes.count;
        valueTableVC.preferredContentSize = CGSizeMake(200.0f, contentHeight);
    }

}




#pragma mark - UIPopoverPresentationController delegate


- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}




#pragma mark - ValueTableDelegate

-(void) valueTypeWasChosen:(NSString *)valueTypeName

{
    [self.visibleValueCells addObject:valueTypeName];
    [self.remainingValueTypes removeObject:valueTypeName];
    [self.tableView reloadData];
}




#pragma mark - Action Handlers
//???




#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.visibleValueCells.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ValueTypeCell" forIndexPath:indexPath];

    
    
    // Configure the cell...
    
    //[cell.ValueText becomeFirstResponder];
    
    NSString *valueNameKey = self.visibleValueCells [indexPath.row];

    
    NSString *valueNameValue = [self.allValueTypes objectForKey:valueNameKey];

    
    //cell.ValueTypeLabel.text = valueNameKey;
    //cell.ValueText.placeholder = valueNameValue;
    
    
    return cell;
}








@end