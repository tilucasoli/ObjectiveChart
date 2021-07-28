//
//  LineChartController.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartController_h
#define LineChartController_h

#import <UIKit/UIKit.h>
#import <ObjectiveChart/Protocols/ChartController.h>
#import <ObjectiveChart/Charts/LineChart/LineChartComponent.h>

@interface LineChartController : UIView<ChartController>

/*! @brief This property sets the color of the X and Y axis in the line chart*/
@property (nonnull) UIColor* axisColor;

/*! @brief This property sets the color of the background frame for the line chart*/
@property (nonnull) UIColor* backgroundColor;

- (instancetype _Nonnull)initWithFrame:(CGRect)frame data: (NSArray<LineChartComponent*>*_Nonnull)data axisColor: (UIColor*_Nonnull)axisColor backgroundColor: (UIColor*_Nonnull)backgroundColor;

/*! @brief Function that draws the axis and background of the chart. "Label margin" is the space to the left and bottom of the chart, where it can display labels, and "limit margin" is the space to the right and top of the chart, adding a space between the ending of each axis and the chart frame. Both are set according to the chart's frame width.*/
- (void) drawChartBase:(CGRect)rect labelMargin: (float)labelMargin limitMargin: (float)limitMargin axisThickness: (float)axisThickness;

/*! @brief Function that draws the lines of the chart taking into account margins and axis thickness. These properties are set according to the chart's frame width.*/
- (void) drawChartLines:(CGRect)rect labelMargin: (float)labelMargin limitMargin: (float)limitMargin axisThickness: (float)axisThickness;

@end

#endif /* LineChartController_h */
