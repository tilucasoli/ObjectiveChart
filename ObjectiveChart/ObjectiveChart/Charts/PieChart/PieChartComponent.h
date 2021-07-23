//
//  PieChartComponent.h
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//
#import <ObjectiveChart/ChartComponent.h>
#import <ObjectiveChart/PieChartData.h>

#ifndef PieChartComponent_h
#define PieChartComponent_h

@interface PieChartComponent : UIView <ChartComponent>
- (id)initWithModel:(PieChartData *)model color:(UIColor*)color;

@end
#endif /* PieChartComponent_h */
