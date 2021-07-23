//
//  ChartComponent.h
//  ObjetiveChart
//
//  Created by Lucas Oliveira on 21/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ChartComponent <NSObject>

@property NSString* name;
@property UIColor* color;
@property NSInteger thickness;

@end

NS_ASSUME_NONNULL_END
