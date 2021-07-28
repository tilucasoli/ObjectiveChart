//
//  PieChartData.h
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//
#import <UIKit/UIKit.h>

#ifndef PieChartData_h
#define PieChartData_h
@interface PieChartData : NSObject

/*! @brief This property represents the name of a "section" of data. i.e.: if an instance represents "sales in January", this name would be "January"*/
@property NSString* title;

/*! @brief This property represents the value of a "section" of data. i.e.: if an instance represents "sales in January", this value would be the number of sales*/
@property double value;

- (id)initWithTitle:(NSString *)title value:(double)value;

@end
#endif /* PieChartData_h */
