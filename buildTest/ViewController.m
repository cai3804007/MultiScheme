//
//  ViewController.m
//  buildTest
//
//  Created by mbc on 2024/3/29.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *zheShiKeyValue = infoDict[@"zheshikey"];
    NSLog(@"zheshikey 值为：%@", zheShiKeyValue);

}


@end
