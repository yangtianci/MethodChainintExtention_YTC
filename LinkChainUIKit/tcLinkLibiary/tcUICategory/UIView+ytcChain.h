//
//  UIView+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UIView (ytcChain)<ytcChainProtocolDelegate>


#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UIView *imgView))callBack;

-(UIView*(^)(UIView *SuperView))tc_SuperView;

#pragma mark ====================== 通用属性

-(UIView*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UIView*(^)(CGRect rect))tc_FrameRect;

-(UIView*(^)(CGRect bounds))tc_Bounds;


-(UIView*(^)(NSInteger tag))tc_Tag;


-(UIView*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UIView*(^)(CGPoint center))tc_CenterPoint;

-(UIView*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UIView*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UIView*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UIView*(^)(CALayer *mask))tc_Mask;

-(UIView*(^)(CGAffineTransform transform))tc_Transform;

-(UIView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UIView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UIView*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UIView*(^)(CGFloat alpha))tc_Alpha;

-(UIView*(^)(BOOL opaque))tc_Opaque;

-(UIView*(^)(BOOL hidden))tc_Hidden;

-(UIView*(^)(UIColor *BGColor))tc_BGColor;

-(UIView*(^)(tcColor color))tc_BGColorEnum;

-(UIView*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UIView*(^)(UIView *maskView))tc_MaskView;

-(UIView*(^)(UIColor *tintColor))tc_TintColor;


@end
