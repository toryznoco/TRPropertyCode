//
//  TRShop.h
//  TRPropertyCode
//
//  Created by Tory on 2017/1/11.
//  Copyright © 2017年 toryznoco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRShop : NSObject
/** 店铺名称 */
@property (nonatomic, strong) NSString *name;
/** 已售 */
@property (nonatomic, assign) NSInteger toSal;
/** 人均消费 */
@property (nonatomic, assign) double perPri;
/** 分数 */
@property (nonatomic, assign) double score;
/** 距离 */
@property (nonatomic, assign) double distance;
/** 店铺id */
@property (nonatomic, assign) NSInteger shopId;
/** 优惠信息 */
@property (nonatomic, strong) NSString *cheap;
/** 图片地址 */
@property (nonatomic, strong) NSString *picture;

@end
