//
//  UISwitch+ytcChain.h
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISwitch (ytcChain)

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISwitch *silder))callBack;

-(UISwitch*(^)(UIView *SuperView))tc_SuperView;

-(void(^)())tc_RemoveFromSuperview;

#pragma mark ====================== 特殊属性

//UIColor *onTintColor
-(UISwitch*(^)(UIColor *onTintColor))tc_onTintColor;

//UIColor *tintColor
-(UISwitch*(^)(UIColor *tintColor))tc_tintColor;

//UIColor *thumbTintColor
-(UISwitch*(^)(UIColor *thumbTintColor))tc_thumbTintColor;

//UIImage *onImage
-(UISwitch*(^)(UIImage *onImage))tc_onImage;

//UIImage *offImage
-(UISwitch*(^)(UIImage *offImage))tc_offImage;

//BOOL on
-(UISwitch*(^)(BOOL on))tc_on;

#pragma mark ====================== 通用属性

-(UISwitch*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UISwitch*(^)(CGRect rect))tc_FrameRect;

-(UISwitch*(^)(CGRect bounds))tc_Bounds;

-(UISwitch*(^)(NSInteger tag))tc_Tag;

-(UISwitch*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UISwitch*(^)(CGPoint center))tc_CenterPoint;

-(UISwitch*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UISwitch*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UISwitch*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UISwitch*(^)(CALayer *mask))tc_Mask;

-(UISwitch*(^)(CGAffineTransform transform))tc_Transform;

-(UISwitch*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UISwitch*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UISwitch*(^)(CGFloat alpha))tc_Alpha;

-(UISwitch*(^)(BOOL opaque))tc_Opaque;

-(UISwitch*(^)(BOOL hidden))tc_Hidden;

-(UISwitch*(^)(UIColor *BGColor))tc_BGColor;

-(UISwitch*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UISwitch*(^)(UIView *maskView))tc_MaskView;

-(UISwitch*(^)(UIColor *tintColor))tc_TintColor;

@end
