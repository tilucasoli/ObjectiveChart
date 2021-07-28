//
//  LineChartData.m
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#import <Foundation/Foundation.h>
#import "LineChartData.h"

@implementation LineChartData

- (id)initWithName:(NSString *)name value:(float)value {
    self.dataName = name;
    self.value = value;
    return self;
}

@end
