//
//  ChartController.h
//  ObjetiveChart
//
//  Created by Lucas Oliveira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import <ObjectiveChart/ChartComponent.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ChartController <NSObject>
@required

@property UIView* backgroundView;
@property NSMutableArray* database;

- (void) reloadData;
- (UIView *) pointView: (id<ChartComponent>) chartComponent;
- (UIView *) didSelected: (id<ChartComponent>) selectedChartComponent;
@end

NS_ASSUME_NONNULL_END
