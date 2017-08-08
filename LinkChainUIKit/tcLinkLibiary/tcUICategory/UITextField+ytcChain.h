//
//  UITextField+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UITextField (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UITextField *textField))callBack;

-(UITextField*(^)(UIView *SuperView))tc_SuperView;

#pragma mark ====================== 通用属性

-(UITextField*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UITextField*(^)(CGRect rect))tc_FrameRect;

-(UITextField*(^)(CGRect bounds))tc_Bounds;

-(UITextField*(^)(NSInteger tag))tc_Tag;

-(UITextField*(^)(CGFloat alpha))tc_Alpha;

-(UITextField*(^)(BOOL hidden))tc_Hidden;

-(UITextField*(^)(UIColor *tintColor))tc_TintColor;

-(UITextField*(^)(UIColor *BGColor))tc_BGColor;

-(UITextField*(^)(tcColor color))tc_BGColorEnum;

-(UITextField*(^)(BOOL opaque))tc_Opaque;

-(UITextField*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UITextField*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UITextField*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UITextField*(^)(CGPoint center))tc_CenterPoint;

-(UITextField*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UITextField*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UITextField*(^)(CALayer *mask))tc_Mask;

-(UITextField*(^)(CGAffineTransform transform))tc_Transform;

-(UITextField*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UITextField*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UITextField*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UITextField*(^)(UIView *maskView))tc_MaskView;


@end
