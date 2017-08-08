//
//  UIImageView+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainHeader.h"

#import "ytcChainProtocol.h"

@interface UIImageView (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(UIImageView*)tc_InitWithBlock:(void(^)(UIImageView *imgView))callBack;

-(UIImageView*(^)(UIView *SuperView))tc_SuperView;

#pragma mark ====================== 特殊属性

-(UIImageView *(^)(UIImage *))tc_Image;

#pragma mark ====================== 通用属性

-(UIImageView*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UIImageView*(^)(CGRect rect))tc_FrameRect;

-(UIImageView*(^)(CGRect bounds))tc_Bounds;

-(UIImageView*(^)(NSInteger tag))tc_Tag;

-(UIImageView*(^)(CGFloat alpha))tc_Alpha;

-(UIImageView*(^)(BOOL hidden))tc_Hidden;

-(UIImageView*(^)(UIColor *tintColor))tc_TintColor;

-(UIImageView*(^)(UIColor *BGColor))tc_BGColor;

-(UIImageView*(^)(tcColor color))tc_BGColorEnum;

-(UIImageView*(^)(BOOL opaque))tc_Opaque;

-(UIImageView*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UIImageView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UIImageView*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UIImageView*(^)(CGPoint center))tc_CenterPoint;

-(UIImageView*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UIImageView*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UIImageView*(^)(CALayer *mask))tc_Mask;

-(UIImageView*(^)(CGAffineTransform transform))tc_Transform;

-(UIImageView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UIImageView*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UIImageView*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UIImageView*(^)(UIView *maskView))tc_MaskView;




@end
