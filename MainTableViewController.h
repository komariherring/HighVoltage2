//
//  MainTableViewController.h
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ValueTableDelegate


- (void) valueTypeWasChosen: (NSString *) valueTypeName;


@end

@interface MainTableViewController : UITableViewController


@end