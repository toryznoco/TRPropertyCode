//
//  ViewController.m
//  TRPropertyCode
//
//  Created by Tory on 2017/1/11.
//  Copyright © 2017年 toryznoco. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "NSDictionary+TRPropertyCode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    http://normcore.net.cn/iorder/server/shop!getNearestShops.action?amount=10&startId=0&userLat=103.59&userLng=30.59
    
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    NSDictionary *dict = @{
                           @"amount": @10,
                           @"startId": @0,
                           @"userLat": @103.59,
                           @"userLng": @30.59
                           };
    [mgr GET:@"http://normcore.net.cn/iorder/server/shop!getNearestShops.action" parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *  _Nullable responseObject) {
        // 自动生成属性代码
        NSArray *resultArr = responseObject[@"shops"];
        NSDictionary *dict = resultArr.firstObject;
        [dict createPropertyCode];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
