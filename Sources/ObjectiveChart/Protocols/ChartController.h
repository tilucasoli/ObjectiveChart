//
//  ChartController.h
//  ObjetiveChart
//
//  Created by Lucas Oliveira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import <ObjectiveChart/Protocols/ChartComponent.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ChartController

@property UIView* backgroundView;
@property NSArray<id<ChartComponent>>* database;

@end

NS_ASSUME_NONNULL_END
