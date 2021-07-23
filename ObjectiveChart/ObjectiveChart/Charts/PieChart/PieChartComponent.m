//
//  PieChartComponent.m
//  ObjectiveChart
//
//  Created by Lucas Oliveira on 22/07/21.
//

#import "PieChartComponent.h"
@implementation PieChartComponent

- (id)initWithModel:(PieChartData *)model color:(UIColor*)color {
    model = model;
    color = color;
    return self;
}

@synthesize title;
@synthesize color;
@synthesize thinkness;

@end
