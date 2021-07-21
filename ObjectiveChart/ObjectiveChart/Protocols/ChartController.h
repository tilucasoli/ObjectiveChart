//
//  ChartController.h
//  ObjetiveChart
//
//  Created by Lucas Oliveira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import "ChartComponent.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ChartController <NSObject>
@required
- (void) reloadData;
- (UIView *) pointView: (id<ChartComponent>) chartComponent;
- (UIView *) didSelected: (id<ChartComponent>) selectedChartComponent;
@end

NS_ASSUME_NONNULL_END

    //protocol ChartComponent: UIView {
    //    var name: String
    //    var color: UIColor
    //    var thinkness: Int
    //}
    //
    //protocol ChartController {
    //    var backgroundView: UIView
    //    var database: [ChartComponent]
    //
    //        // Caso seja necessario!
    //    func reloadData() -> Void
    //
    //    func pointView(chartComponent: ChartComponent) -> UIView
    //    func didSelected(selectedChartComponent: ChartComponent) -> UIView
    //}
