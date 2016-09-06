//
//  ValueTableViewController.m
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "ValueTableViewController.h"





@interface ValueTableViewController ()



@end

@implementation ValueTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Tableview data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.valueTypes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"valuePopoverCell" forIndexPath:indexPath];
    NSString *valueTypeName = self.valueTypes[indexPath.row];
    cell.textLabel.text = valueTypeName;
    
    
    // Configure the cell...
    
    return cell;
}

#pragma mark - UITableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    //this deselects the row selected. AKA turns off the highlight
    
    NSString *valueTypeName = self.valueTypes[indexPath.row];
    [self.delegate valueTypeWasChosen:valueTypeName];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}






@end
