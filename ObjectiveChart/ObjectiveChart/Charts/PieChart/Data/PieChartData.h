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

@property NSString* title;
@property double value;

- (id)initWithTitle:(NSString *)title value:(double)value;

@end
#endif /* PieChartData_h */
