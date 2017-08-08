//
//  UIScrollView+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UIScrollView (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UIScrollView *scrollView))callBack;

-(UIScrollView*(^)(UIView *SuperView))tc_SuperView;

#pragma mark ====================== 通用属性

-(UIScrollView*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UIScrollView*(^)(CGRect rect))tc_FrameRect;

-(UIScrollView*(^)(CGRect bounds))tc_Bounds;

-(UIScrollView*(^)(NSInteger tag))tc_Tag;

-(UIScrollView*(^)(CGFloat alpha))tc_Alpha;

-(UIScrollView*(^)(BOOL hidden))tc_Hidden;

-(UIScrollView*(^)(UIColor *tintColor))tc_TintColor;

-(UIScrollView*(^)(UIColor *BGColor))tc_BGColor;

-(UIScrollView*(^)(tcColor color))tc_BGColorEnum;

-(UIScrollView*(^)(BOOL opaque))tc_Opaque;

-(UIScrollView*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UIScrollView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UIScrollView*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UIScrollView*(^)(CGPoint center))tc_CenterPoint;

-(UIScrollView*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UIScrollView*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UIScrollView*(^)(CALayer *mask))tc_Mask;

-(UIScrollView*(^)(CGAffineTransform transform))tc_Transform;

-(UIScrollView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UIScrollView*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UIScrollView*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UIScrollView*(^)(UIView *maskView))tc_MaskView;


@end
