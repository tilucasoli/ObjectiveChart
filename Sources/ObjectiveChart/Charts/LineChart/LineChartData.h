//
//  LineChartData.h
//  ObjectiveChart
//
//  Created by Pedro Henrique on 23/07/21.
//

#ifndef LineChartData_h
#define LineChartData_h

@interface LineChartData : NSObject

/*! @brief This property represents the name of a "section" of data. i.e.: if an instance represents "sales in January", this name would be "January"*/
@property (nonnull) NSString *dataName;

/*! @brief This property represents the value of a "section" of data. i.e.: if an instance represents "sales in January", this value would be the number of sales*/
@property float value;

- (id _Nonnull) initWithName: (NSString*_Nonnull)name value: (float)value;

@end

#endif /* LineChartData_h */
