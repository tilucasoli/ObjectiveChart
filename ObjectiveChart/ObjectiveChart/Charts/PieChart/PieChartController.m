//
//  PieChartController.m
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import <PieChartController.h>
@implementation PieChartController

@synthesize backgroundView;
@synthesize database;

- (nonnull UIView *)didSelected:(nonnull id<ChartComponent>)selectedChartComponent {
    return [UIView init];
}

- (nonnull UIView *)pointView:(nonnull id<ChartComponent>)chartComponent {
    return [UIView init];
}

- (void)reloadData {
}

@end
