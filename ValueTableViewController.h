//
//  ValueTableViewController.h
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainTableViewController.h"

@interface ValueTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *valueTypes;

@property (strong, nonatomic) id<ValueTableDelegate> delegate;



@end
