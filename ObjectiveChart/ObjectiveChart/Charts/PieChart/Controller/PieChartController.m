//
//  PieChartController.m
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import <ObjectiveChart/PieChartController.h>
#import <ObjectiveChart/PieChartComponent.h>
#import <ObjectiveChart/ChartComponent.h>

@implementation PieChartController

@synthesize backgroundView;
@synthesize database;
@synthesize spacing;
@synthesize centerCircleRadius;

//Delegate
@synthesize radius;

- (void)layoutSubviews {
    [super layoutSubviews];

    radius = self.frame.size.width/4;
    CGFloat totalPercentage = [self sumPercentage];

    CGFloat startAngle = 0.0;

    for (int i = 0; i < [database count]; i++)
    {
        PieChartComponent * component = (PieChartComponent *)[database objectAtIndex:i];

        CGFloat endAngle = startAngle + (component.model.value * 2 * M_PI)/totalPercentage;

        component.translatesAutoresizingMaskIntoConstraints = NO;
        component.delegate = self;
        component.startAngle = startAngle;
        component.endAngle = endAngle;

        startAngle = endAngle;

        [self addSubview: component];
        [self configureComponentConstraints: component];
    }

    UIView *centerCircleView = [[UIView alloc] init];
    centerCircleView.backgroundColor = [UIColor blackColor];
    centerCircleView.layer.cornerRadius = centerCircleRadius/2;
    centerCircleView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview: centerCircleView];

    [self configureCenterCircleConstraints: centerCircleView];

}

- (CGFloat)sumPercentage {

    double totalPercentage = 0.0;
    for (int i = 0; i < [database count]; i++)
    {
        PieChartComponent * component = (PieChartComponent *)[database objectAtIndex:i];
        totalPercentage += component.model.value;
    }
    return totalPercentage;
}

- (void)configureComponentConstraints:(nonnull id<ChartComponent>)chartComponent  {

    NSLayoutConstraint *width =[NSLayoutConstraint
                                constraintWithItem:chartComponent
                                attribute:NSLayoutAttributeWidth
                                relatedBy:0
                                toItem:self
                                attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                constant:0];
    NSLayoutConstraint *height =[NSLayoutConstraint
                                 constraintWithItem:chartComponent
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:0
                                 toItem:self
                                 attribute:NSLayoutAttributeHeight
                                 multiplier:1.0
                                 constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint
                               constraintWithItem:chartComponent
                               attribute:NSLayoutAttributeTop
                               relatedBy:NSLayoutRelationEqual
                               toItem:self
                               attribute:NSLayoutAttributeTop
                               multiplier:1.0f
                               constant:0.f];
    NSLayoutConstraint *leading = [NSLayoutConstraint
                                   constraintWithItem:chartComponent
                                   attribute:NSLayoutAttributeLeading
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:self
                                   attribute:NSLayoutAttributeLeading
                                   multiplier:1.0f
                                   constant:0.f];
    [self addConstraint:width];
    [self addConstraint:height];
    [self addConstraint:top];
    [self addConstraint:leading];
}

- (void)configureCenterCircleConstraints:(UIView*) view  {

    CGFloat widthView = self.frame.size.width;

    NSLayoutConstraint *width =[NSLayoutConstraint
                                constraintWithItem:view
                                attribute:NSLayoutAttributeWidth
                                relatedBy:0
                                toItem:self
                                attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                constant:-(widthView-centerCircleRadius)];
    NSLayoutConstraint *height =[NSLayoutConstraint
                                 constraintWithItem:view
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:0
                                 toItem:self
                                 attribute:NSLayoutAttributeHeight
                                 multiplier:1.0
                                 constant:-(widthView-centerCircleRadius)];
    NSLayoutConstraint *centerX = [NSLayoutConstraint
                               constraintWithItem:view
                               attribute:NSLayoutAttributeCenterX
                               relatedBy:NSLayoutRelationEqual
                               toItem:self
                               attribute:NSLayoutAttributeCenterX
                               multiplier:1.0f
                               constant:0];
    NSLayoutConstraint *centerY = [NSLayoutConstraint
                                   constraintWithItem:view
                                   attribute:NSLayoutAttributeCenterY
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:self
                                   attribute:NSLayoutAttributeCenterY
                                   multiplier:1.0f
                                   constant:0];
    [self addConstraint:width];
    [self addConstraint:height];
    [self addConstraint:centerY];
    [self addConstraint:centerX];
}

// MARK: ChartComponent Protocol

- (nonnull UIView *)didSelected:(nonnull id<ChartComponent>)selectedChartComponent {
    return [UIView init];
}

- (nonnull UIView *)pointView:(nonnull id<ChartComponent>)chartComponent {
    return [UIView init];
}

- (void)reloadData {
}

@end
