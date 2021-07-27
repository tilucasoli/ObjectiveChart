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
    
    float chartMargin = self.frame.size.width / 7.8;
    float chartLimit = self.frame.size.width / 31.2;
    float chartThickness = self.frame.size.width / 78;
    
    [self drawChartBase:rect labelMargin:chartMargin limitMargin:chartLimit axisThickness:chartThickness];
    
    [self drawChartLines:rect labelMargin:chartMargin limitMargin:chartLimit axisThickness:chartThickness];
}

- (void) drawChartBase:(CGRect)rect labelMargin: (float)labelMargin limitMargin: (float)limitMargin axisThickness: (float)axisThickness {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    const CGFloat* axisColorComponents = CGColorGetComponents(self.axisColor.CGColor);
    const CGFloat* backgroundColorComp = CGColorGetComponents(self.backgroundColor.CGColor);
    
    CGRect chartBackground = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    CGContextSetRGBFillColor(context, backgroundColorComp[0], backgroundColorComp[1], backgroundColorComp[2], CGColorGetAlpha(self.backgroundColor.CGColor));
    CGContextSetRGBStrokeColor(context, backgroundColorComp[0], backgroundColorComp[1], backgroundColorComp[2], CGColorGetAlpha(self.backgroundColor.CGColor));
    CGContextFillRect(context, chartBackground);
    
    // X-axis length: frame width - label margin - limit margin - axis thickness
    
    CGRect xAxis = CGRectMake(labelMargin - limitMargin, self.frame.size.height - labelMargin, self.frame.size.width - labelMargin, axisThickness);
    CGContextSetRGBFillColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextSetRGBStrokeColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextFillRect(context, xAxis);
    
    // Y-axis length: frame height - label margin - limit margin - axis thickness
    
    CGRect yAxis = CGRectMake(labelMargin, limitMargin, axisThickness, self.frame.size.height - labelMargin);
    CGContextSetRGBFillColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextSetRGBStrokeColor(context, axisColorComponents[0], axisColorComponents[1], axisColorComponents[2], CGColorGetAlpha(self.axisColor.CGColor));
    CGContextFillRect(context, yAxis);
    
}

- (void) drawChartLines:(CGRect)rect labelMargin: (float)labelMargin limitMargin: (float)limitMargin axisThickness: (float)axisThickness {
    float highestPoint = FLT_MIN;
    float lowestPoint = FLT_MAX;
    int maxPointCount = 0;
    
    for (LineChartComponent *line in self.database) {
        int pointCount = 0;
        for (LineChartData *point in line.pointData) {
            if (point.value > highestPoint) {
                highestPoint = point.value;
            }
            if (point.value < lowestPoint) {
                lowestPoint = point.value;
            }
            pointCount += 1;
        }
        if (pointCount > maxPointCount) {
            maxPointCount = pointCount;
        }
    }
    
    float xAxisFraction = (self.frame.size.width - labelMargin - limitMargin - axisThickness) / maxPointCount;
    float yAxisFraction = (self.frame.size.height - labelMargin - limitMargin - axisThickness) / ((highestPoint - lowestPoint) * 1.25);
        
    for (LineChartComponent *line in self.database) {
        
        CGFloat prevX = labelMargin + axisThickness; // Initial value: label margin + axis thickness
        CGFloat prevY = self.frame.size.height - labelMargin; // Initial value: frame height - label margin
        
        for (NSInteger i = 1; i <= line.pointData.count; i++) {
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(prevX, prevY)];
            
            CGFloat currentX = i * xAxisFraction;
            CGFloat currentY = (self.frame.size.height - labelMargin - limitMargin - axisThickness) - (yAxisFraction * (line.pointData[i-1].value - lowestPoint));
                        
            [path addLineToPoint:CGPointMake(currentX, currentY)];
            
            CAShapeLayer *shapeLayer = [CAShapeLayer layer];
            shapeLayer.path = [path CGPath];
            shapeLayer.strokeColor = [line.color CGColor];
            shapeLayer.lineWidth = line.thickness * 3;
            shapeLayer.fillColor = [line.color CGColor];
            
            [self.layer addSublayer:shapeLayer];
            
            CAShapeLayer *circleLayer = [CAShapeLayer layer];
            circleLayer.strokeColor = [line.color CGColor];
            circleLayer.fillColor = [line.color CGColor];
            [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(currentX - shapeLayer.lineWidth, currentY - shapeLayer.lineWidth, shapeLayer.lineWidth * 2, shapeLayer.lineWidth * 2)] CGPath]];
            [self.layer addSublayer:circleLayer];
            
            prevX = currentX;
            prevY = currentY;
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
