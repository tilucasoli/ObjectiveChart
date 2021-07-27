//
//  PieChartComponent.h
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//
#import <ObjectiveChart/ChartComponent.h>
#import <ObjectiveChart/PieChartData.h>
#import <ObjectiveChart/PieChartComponentDelegate.h>

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
