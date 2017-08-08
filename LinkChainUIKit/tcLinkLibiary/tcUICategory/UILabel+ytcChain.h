//
//  UILabel+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UILabel (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UILabel *label))callBack;

-(UILabel*(^)(UIView *SuperView))tc_SuperView;


#pragma mark ====================== 特殊属性

-(UILabel *(^)(NSString *))tc_Text;

-(UILabel *(^)(UIColor *))tc_TextColor;

-(UILabel *(^)(NSInteger))tc_FontSize;

-(UILabel *(^)(NSTextAlignment))tc_Align;

#pragma mark ====================== 通用属性

-(UILabel*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UILabel*(^)(CGRect rect))tc_FrameRect;

-(UILabel*(^)(CGRect bounds))tc_Bounds;

-(UILabel*(^)(NSInteger tag))tc_Tag;

-(UILabel*(^)(CGFloat alpha))tc_Alpha;

-(UILabel*(^)(BOOL hidden))tc_Hidden;

-(UILabel*(^)(UIColor *tintColor))tc_TintColor;

-(UILabel*(^)(UIColor *BGColor))tc_BGColor;

-(UILabel*(^)(tcColor color))tc_BGColorEnum;

-(UILabel*(^)(BOOL opaque))tc_Opaque;

-(UILabel*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UILabel*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UILabel*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UILabel*(^)(CGPoint center))tc_CenterPoint;

-(UILabel*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UILabel*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UILabel*(^)(CALayer *mask))tc_Mask;

-(UILabel*(^)(CGAffineTransform transform))tc_Transform;

-(UILabel*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UILabel*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UILabel*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UILabel*(^)(UIView *maskView))tc_MaskView;


@end
