//
//  Cell.h
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

@property (weak, nonatomic) IBOutlet UILabel *ValueTypeLabel;
@property (weak, nonatomic) IBOutlet UITextField *ValueText;


@end