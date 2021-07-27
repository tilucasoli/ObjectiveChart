//
//  PieChartController.h
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import <ObjectiveChart/Protocols/ChartController.h>
#import <ObjectiveChart/Charts/PieChart/Delegate/PieChartComponentDelegate.h>

#ifndef PieChartController_h
#define PieChartController_h

@interface PieChartController : UIView <ChartController, PieChartComponentDelegate>
@property CGFloat spacing;
@property CGFloat centerCircleRadius;
@end

#endif /* pieChartController_h */
