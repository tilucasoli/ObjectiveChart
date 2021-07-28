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

/*! @brief Starting angle for the bezierPathWithArcCenter used  to draw the pie chart component*/
@property CGFloat startAngle;

/*! @brief Ending angle for the bezierPathWithArcCenter used  to draw the pie chart component*/
@property CGFloat endAngle;

/*! @brief Data used as reference for the display of the pia chart component*/
@property PieChartData* _Nullable model;

@property (nonatomic, weak) id <PieChartComponentDelegate> _Nullable delegate;

- (nonnull instancetype)initWithModel:(PieChartData *_Nonnull)model color:(UIColor*_Nonnull)color;

/*! @brief Function that draws the pie chart component*/
- (void)drawComponent;

@end
#endif /* PieChartComponent_h */
