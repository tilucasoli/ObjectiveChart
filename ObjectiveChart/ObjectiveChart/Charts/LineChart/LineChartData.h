//
//  LineChartData.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartData_h
#define LineChartData_h

@interface LineChartData : NSObject

@property (nonnull) NSString *dataName;

@property NSInteger value;

- (id _Nonnull) initWithName: (NSString*_Nonnull)name value: (NSInteger)value;

@end

#endif /* LineChartData_h */
