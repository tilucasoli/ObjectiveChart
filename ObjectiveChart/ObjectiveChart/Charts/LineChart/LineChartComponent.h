//
//  LineChartComponent.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartComponent_h
#define LineChartComponent_h

#import <UIKit/UIKit.h>
#import <ObjectiveChart/ChartComponent.h>
#import <ObjectiveChart/LineChartData.h>

@interface LineChartComponent : NSObject<ChartComponent>

@property (nonnull) NSArray<LineChartData*> *pointData;

- (id _Nonnull) initWithName: (NSString* _Nonnull)name color: (UIColor* _Nonnull)color thickness: (NSInteger)thickness data: (NSArray<LineChartData*>* _Nonnull)data;

@end

#endif /* LineChartComponent_h */
