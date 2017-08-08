//
//  SubJoinTool.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

@interface SubJoinTool : NSObject<ytcChainProtocolDelegate>


//判断字符串是否为空
+ (BOOL)judgeString:(NSString*)str;

//判断字体是否为空
+ (BOOL)judgeFont:(UIFont*)font;



//判断图片是否为空
+ (BOOL)judgeImage:(UIImage*)img;

//判断数组是否为空
+ (BOOL)judgeArray:(NSArray*)arr;

//判断字典是否为空
+ (BOOL)judgeDict:(NSDictionary*)dict;


//根据枚举进行颜色转换
+(UIColor*)tcColorTransformWith:(tcColor)name;


@end
