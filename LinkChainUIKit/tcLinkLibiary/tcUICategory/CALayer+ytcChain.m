//
//  CALayer+ytcChain.m
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/8/21.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "CALayer+ytcChain.h"

@implementation CALayer (ytcChain)


#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(CALayer *layer))callBack{
    
    CALayer *layer = [[CALayer alloc]init];
    callBack(layer);
    return layer;
}


-(CALayer*(^)(CALayer *SuperLayer))tc_SuperLayer{
    return ^CALayer *(CALayer *SuperLayer){
        [SuperLayer addSublayer:self];
        return self;
    };
}









@end
