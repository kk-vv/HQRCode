//
//  ZXQRScanViewController.h
//  XXXX
//
//  Created by JuanFelix on 2016/12/5.
//  Copyright © 2016年 screson. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZXCallBack)(NSString * result);

@interface ZXQRScanViewController : UIViewController

@property (nonatomic,copy) ZXCallBack zxCallBack;
@property (nonatomic,assign) BOOL autoDismiss;

/** Start Scan
 * push : YES - PUSH ,NO - PRESENT
 */
+ (ZXQRScanViewController *)startScanInViewController:(UIViewController *)vc
                                               asPush:(BOOL)push
                                          autoDismiss:(BOOL)autoDismiss
                                             callBack:(ZXCallBack)callBack;

- (void)stopScan;
- (void)restartScan;

@end
