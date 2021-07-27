//
//  PieChartData.m
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import "PieChartData.h"

@implementation PieChartData

- (id)initWithTitle:(NSString *)title value:(double)value; {
    self.title = title;
    self.value = value;
    return self;
}

@end
