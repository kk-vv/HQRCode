//
//  ViewController.m
//  ZXQRCodeScan
//
//  Created by JuanFelix on 2017/1/5.
//  Copyright © 2017年 screson. All rights reserved.
//

#import "ViewController.h"
#import "ZXQRScanViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *txtvResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_txtvResult setText:@""];
}

//PUSH
- (IBAction)startScan:(id)sender {
    [ZXQRScanViewController startScanInViewController:self asPush:true autoDismiss:true callBack:^(NSString *result) {
        [_txtvResult setText:result];
    }];
    /*
    ZXQRScanViewController * scanVC = [[ZXQRScanViewController alloc] init];
    [vc setZxCallBack:^(NSString * result){
        [_txtvResult setText:result];
    }];
    vc.autoDismiss = true;
    [self.navigationController pushViewController:vc animated:true];
     */
}

//PRESENT
- (IBAction)startScan2:(id)sender {
    [ZXQRScanViewController startScanInViewController:self asPush:false autoDismiss:false callBack:^(NSString *result) {
        NSLog(@"Result:%@",result);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
