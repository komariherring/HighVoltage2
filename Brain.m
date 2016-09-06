//
//  Brain.m
//  HighVoltage
//
//  Created by Komari Herring on 9/4/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "Brain.h"

typedef enum
{
    OperatorTypeNone,
    OperatorTypeAddition,
    OperatorTypeSubtraction,
    OperatorTypeMultiplication,
    OperatorTypeDivision
}   OperatorType;


@interface Brain ()
//changing property from weak to copy takes away errors
@property (nonatomic, copy) NSMutableString *operand1String;
@property (nonatomic, copy) NSMutableString *operand2String;
@property (assign) OperatorType operatorType;

@end


@implementation Brain


-(instancetype) init;


{
    self = [super init];
    
    
    {
        _operand1String = [[NSMutableString alloc] init];
        _operand2String = [[NSMutableString alloc] init];
        _operatorType = OperatorTypeNone;
    }
    return self;
}






@end