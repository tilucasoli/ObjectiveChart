//
//  LineChartController.m
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LineChartController.h"

@implementation LineChartController

@synthesize database;

@synthesize backgroundView;

- (instancetype)initWithFrame:(CGRect)frame data: (NSArray<LineChartComponent*>*)data axisColor: (UIColor*_Nonnull)axisColor backgroundColor: (UIColor*_Nonnull)backgroundColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.opaque = NO;
        self.database = data;
        self.axisColor = axisColor;
        self.backgroundColor = backgroundColor;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    [self drawChartBase:rect];
    
    [self drawChartLines:rect];
}

- (void) drawChartBase:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    const CGFloat* axisColorComponents = CGColorGetComponents(self.axisColor.CGColor);
    const CGFloat* backgroundColorComp = CGColorGetComponents(self.backgroundColor.CGColor);
    
    CGRect chartBackground = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    CGContextSetRGBFillColor(context, backgroundColorComp[0], backgroundColorComp[1], backgroundColorComp[2], CGColorGetAlpha(self.backgroundColor.CGColor));
    CGContextSetRGBStrokeColor(context, backgroundColorComp[0], backgroundColorComp[1], backgroundColorComp[2], CGColorGetAlpha(self.backgroundColor.CGColor));
    CGContextFillRect(context, chartBackground);
    
    CGRect xAxis = CGRectMake(37.5, self.frame.size.height - 50, self.frame.size.width - 52.5, 7.5);
    CGContextSetRGBFillColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextSetRGBStrokeColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextFillRect(context, xAxis);
    
    CGRect yAxis = CGRectMake(45, 15, 7.5, self.frame.size.height - 50);
    CGContextSetRGBFillColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextSetRGBStrokeColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextFillRect(context, yAxis);
    
}

- (void) drawChartLines:(CGRect)rect {
    
    float higherPoint = FLT_MIN;
    float lowerPoint = FLT_MAX;
    
    for (LineChartComponent *line in self.database) {
        for (LineChartData *point in line.pointData) {
            if (point.value < lowerPoint) {
                lowerPoint = point.value;
            } else if (point.value > higherPoint) {
                higherPoint = point.value;
            }
        }
    }
    
    NSLog(@"Higher: %.2f", higherPoint);
    NSLog(@"Lower: %.2f", lowerPoint);
    
    for (LineChartComponent *line in self.database) {
        for (LineChartData *point in line.pointData) {
            
        }
    }
}

- (nonnull UIView *)didSelected:(nonnull id<ChartComponent>)selectedChartComponent {
    UIView *placeholder;
    return placeholder;
}

- (nonnull UIView *)pointView:(nonnull id<ChartComponent>)chartComponent {
    UIView *placeholder;
    return placeholder;
}

- (void)reloadData {
}

@end
