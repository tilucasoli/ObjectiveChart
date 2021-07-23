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

- (id)initWithName:(NSString *)name color:(UIColor *)color thickness:(NSInteger)thickness data:(NSArray<LineChartData*>*)data {
    self.lineName = name;
    self.lineColor = color;
    self.lineThickness = thickness;
    self.pointData = data;
    return self;
}

@end
