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

@synthesize title;
@synthesize color;
@synthesize thickness;

- (id)initWithTitle:(NSString *)lineTitle color:(UIColor *)lineColor thickness:(NSInteger)lineThickness data:(NSArray<LineChartData*>*)lineData {
    title = lineTitle;
    color = lineColor;
    thickness = lineThickness;
    self.pointData = lineData;
    return self;
}

@end
