//
//  SubJoinTool.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "SubJoinTool.h"

@implementation SubJoinTool

//判断字符串是否为空
+ (BOOL)judgeString:(NSString*)str{
    if ([str isKindOfClass:[NSString class]]) {
        if (str.length > 0) {
            return YES;
        }else{
            NSLog(@"ytc_Link:字符串参数为空");
            return NO;
        }
    }else{
        NSLog(@"ytc_Link:参数不是字符串类型");
        return NO;
    }

}

//判断字体是否为空
+ (BOOL)judgeFont:(UIFont*)font{
    if ([font isKindOfClass:[UIFont class]]) {
        if (font != nil) {
            return YES;
        }else{
            NSLog(@"ytc_Link:字体参数为空");
            return NO;
        }
    }else{
        NSLog(@"ytc_Link:参数不是字体类型");
        return NO;
    }
}



//判断图片是否为空
+ (BOOL)judgeImage:(UIImage*)img{
    if ([img isKindOfClass:[UIImage class]]) {
        if (img != nil) {
            return YES;
        }else{
            NSLog(@"ytc_Link:图片参数为空");
            return NO;
        }
    }else{
        NSLog(@"ytc_Link:参数不是图片类型");
        return NO;
    }
}

//判断数组是否为空
+ (BOOL)judgeArray:(NSArray*)arr{
    if ([arr isKindOfClass:[NSArray class]]) {
        if (arr.count > 0) {
            return YES;
        }else{
            NSLog(@"ytc_Link:数组参数为空");
            return NO;
        }
    }else{
        NSLog(@"ytc_Link:参数不是数组类型");
        return NO;
    }
}

//判断字典是否为空
+ (BOOL)judgeDict:(NSDictionary*)dict{
    if ([dict isKindOfClass:[NSDictionary class]]) {
        if (dict.count > 0) {
            return YES;
        }else{
            NSLog(@"ytc_Link:字典参数为空");
            return NO;
        }
    }else{
        NSLog(@"ytc_Link:参数不是字典类型");
        return NO;
    }
}



//根据枚举进行颜色转换
+(UIColor*)tcColorTransformWith:(tcColor)name{
    UIColor *color;
    switch (name) {
        case tcColor_Black:
            color = [UIColor blackColor];
            break;
        case tcColor_DarkGray:
            color = [UIColor darkGrayColor];
            break;
        case tcColor_LightGray:
            color = [UIColor lightGrayColor];
            break;
        case tcColor_White:
            color = [UIColor whiteColor];
            break;
        case tcColor_Gray:
            color = [UIColor grayColor];
            break;
        case tcColor_Red:
            color = [UIColor redColor];
            break;
        case tcColor_Green:
            color = [UIColor greenColor];
            break;
        case tcColor_Blue:
            color = [UIColor blueColor];
            break;
        case tcColor_Cyan:
            color = [UIColor cyanColor];
            break;
        case tcColor_Yellow:
            color = [UIColor yellowColor];
            break;
        case tcColor_Magenta:
            color = [UIColor magentaColor];
            break;
        case tcColor_Orange:
            color = [UIColor orangeColor];
            break;
        case tcColor_Purple:
            color = [UIColor purpleColor];
            break;
        case tcColor_Brown:
            color = [UIColor brownColor];
            break;
        case tcColor_Clear:
            color = [UIColor clearColor];
            break;
        case tcColor_Rand0m:
            color = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:0.9];
            break;
        default:
            break;
    }
    return color;
}






@end
