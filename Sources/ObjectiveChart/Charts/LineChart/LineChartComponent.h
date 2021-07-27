//
//  LineChartComponent.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartComponent_h
#define LineChartComponent_h

#import <UIKit/UIKit.h>
#import <ObjectiveChart/Protocols/ChartController.h>
#import <ObjectiveChart/Charts/LineChart/LineChartData.h>

@interface LineChartComponent : NSObject<ChartComponent>

@property (nonnull) NSArray<LineChartData*> *pointData;

- (id _Nonnull) initWithTitle: (NSString* _Nonnull)lineTitle color: (UIColor* _Nonnull)color thickness: (NSInteger)thickness data: (NSArray<LineChartData*>* _Nonnull)data;

@end

#endif /* LineChartComponent_h */
