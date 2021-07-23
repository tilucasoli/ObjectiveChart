//
//  LineChartComponent.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartComponent_h
#define LineChartComponent_h

#import <UIKit/UIKit.h>
#import "LineChartData.h"

@interface LineChartComponent : NSObject

@property (nonnull) NSString *lineName;

@property (nonnull) UIColor *lineColor;

@property NSInteger lineThickness;

@property (nonnull) NSArray<LineChartData*> *pointData;

- (id _Nonnull) initWithName: (NSString* _Nonnull)name color: (UIColor* _Nonnull)color thickness: (NSInteger)thickness data: (NSArray<LineChartData*>* _Nonnull)data;

@end

#endif /* LineChartComponent_h */
