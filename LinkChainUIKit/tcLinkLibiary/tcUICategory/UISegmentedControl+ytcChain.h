//
//  UISegmentedControl+ytcChain.h
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UISegmentedControl (ytcChain)<ytcChainProtocolDelegate>


#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISegmentedControl *segementCtrl))callBack;

-(UISegmentedControl*(^)(UIView *SuperView))tc_SuperView;

-(void(^)())tc_RemoveFromSuperview;

#pragma mark ====================== 特殊属性

//BOOL momentary
-(UISegmentedControl*(^)(BOOL momentary))tc_momentary;

//BOOL apportionsSegmentWidthsByContent
-(UISegmentedControl*(^)(BOOL apportionsSegmentWidthsByContent))tc_apportionsSegmentWidthsByContent;

//NSInteger selectedSegmentIndex
-(UISegmentedControl*(^)(NSInteger selectedSegmentIndex))tc_selectedSegmentIndex;

//UIColor *tintColor
-(UISegmentedControl*(^)(UIColor *tintColor))tc_tintColor;




#pragma mark ====================== 通用属性

-(UISegmentedControl*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UISegmentedControl*(^)(CGRect rect))tc_FrameRect;

-(UISegmentedControl*(^)(CGRect bounds))tc_Bounds;


-(UISegmentedControl*(^)(NSInteger tag))tc_Tag;


-(UISegmentedControl*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UISegmentedControl*(^)(CGPoint center))tc_CenterPoint;

-(UISegmentedControl*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UISegmentedControl*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UISegmentedControl*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UISegmentedControl*(^)(CALayer *mask))tc_Mask;

-(UISegmentedControl*(^)(CGAffineTransform transform))tc_Transform;

-(UISegmentedControl*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;


-(UISegmentedControl*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UISegmentedControl*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UISegmentedControl*(^)(CGFloat alpha))tc_Alpha;

-(UISegmentedControl*(^)(BOOL opaque))tc_Opaque;

-(UISegmentedControl*(^)(BOOL hidden))tc_Hidden;

-(UISegmentedControl*(^)(UIColor *BGColor))tc_BGColor;

-(UISegmentedControl*(^)(tcColor color))tc_BGColorEnum;

-(UISegmentedControl*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UISegmentedControl*(^)(UIView *maskView))tc_MaskView;

-(UISegmentedControl*(^)(UIColor *tintColor))tc_TintColor;

@end
