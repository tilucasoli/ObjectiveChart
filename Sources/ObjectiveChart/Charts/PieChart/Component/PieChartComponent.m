//
//  PieChartComponent.m
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import "PieChartComponent.h"
#import <ObjectiveChart/Charts/PieChart/Data/PieChartData.h>

@implementation PieChartComponent

@synthesize model;

@synthesize title;
@synthesize color;
@synthesize thickness;;

@synthesize startAngle;
@synthesize endAngle;


- (nonnull instancetype)initWithModel:(PieChartData *_Nonnull)model color:(UIColor*_Nonnull)color {
    self = [super initWithFrame: CGRectZero];
    self.model = model;
    self.color = color;
    self.backgroundColor = [UIColor clearColor];
    return self;
}

- (void)layoutSubviews {
    [self drawComponent];
}


- (void)drawComponent {
    CGFloat startAngle = self.startAngle;
    CGFloat endAngle = self.endAngle;

    CGPoint centerPoint = self.center;

    float radius = _delegate.radius;

    UIBezierPath *circlePath = [UIBezierPath            bezierPathWithArcCenter:centerPoint
                         radius:radius
                     startAngle:startAngle
                       endAngle:endAngle
                      clockwise:YES];

    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    
    shapeLayer.path = circlePath.CGPath;
    shapeLayer.fillColor = [[UIColor clearColor] CGColor];
    shapeLayer.strokeColor = [color CGColor];
    shapeLayer.lineWidth = 2*_delegate.radius;

    [self.layer addSublayer:shapeLayer];
}

@end
