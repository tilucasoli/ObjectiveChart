//
//  LineChartController.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartController_h
#define LineChartController_h

#import <UIKit/UIKit.h>
#import <ObjectiveChart/ChartController.h>
#import <ObjectiveChart/LineChartComponent.h>

@interface LineChartController : UIView<ChartController>

@property (nonnull) UIColor* axisColor;

@property (nonnull) UIColor* backgroundColor;

- (instancetype _Nonnull)initWithFrame:(CGRect)frame data: (NSArray<LineChartComponent*>*_Nonnull)data axisColor: (UIColor*_Nonnull)axisColor backgroundColor: (UIColor*_Nonnull)backgroundColor;

- (void) drawChartBase:(CGRect)rect;

- (void) drawChartLines:(CGRect)rect;

@end

#endif /* LineChartController_h */
