//
//  PieChartComponent.h
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//
#import <ObjectiveChart/Protocols/ChartComponent.h>
#import <ObjectiveChart/Charts/PieChart/Data/PieChartData.h>
#import <ObjectiveChart/Charts/PieChart/Delegate/PieChartComponentDelegate.h>

#ifndef PieChartComponent_h
#define PieChartComponent_h

@interface PieChartComponent : UIView <ChartComponent>

@property CGFloat startAngle;
@property CGFloat endAngle;

@property PieChartData* _Nullable model;
@property (nonatomic, weak) id <PieChartComponentDelegate> _Nullable delegate;

- (nonnull instancetype)initWithModel:(PieChartData *_Nonnull)model color:(UIColor*_Nonnull)color;

- (void)drawComponent;

@end
#endif /* PieChartComponent_h */
