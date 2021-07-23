//
//  LineChartComponent.m
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#import <Foundation/Foundation.h>
#import "LineChartData.h"
#import "LineChartComponent.h"

@implementation LineChartComponent

@synthesize name;

@synthesize color;

@synthesize thickness;

- (id)initWithName:(NSString *)lineName color:(UIColor *)lineColor thickness:(NSInteger)lineThickness data:(NSArray<LineChartData*>*)lineData {
    name = lineName;
    color = lineColor;
    thickness = lineThickness;
    self.pointData = lineData;
    return self;
}

@end
