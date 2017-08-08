//
//  ytcChainProtocol.h
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/8/8.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <Foundation/Foundation.h>



//触摸手势类型
typedef NS_ENUM(NSInteger, GestureType){
    GestureType_Tap,
    GestureType_Pan,
    GestureType_Pinch,
    GestureType_Rotation,
    GestureType_LongPress,
    GestureType_Swipe
};



//基本颜色类型
typedef NS_ENUM(NSInteger,tcColor){
    tcColor_Black,
    tcColor_DarkGray,
    tcColor_LightGray,
    tcColor_White,
    tcColor_Gray,
    tcColor_Red,
    tcColor_Green,
    tcColor_Blue,
    tcColor_Cyan,
    tcColor_Yellow,
    tcColor_Magenta,
    tcColor_Orange,
    tcColor_Purple,
    tcColor_Brown,
    tcColor_Clear,
    tcColor_Rand0m
};



@protocol ytcChainProtocolDelegate <NSObject>






@end
