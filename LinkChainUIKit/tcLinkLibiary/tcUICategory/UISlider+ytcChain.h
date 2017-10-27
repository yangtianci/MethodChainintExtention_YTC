//
//  UISlider+ytcChain.h
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UISlider (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISlider *silder))callBack;

-(UISlider*(^)(UIView *SuperView))tc_SuperView;

-(void(^)())tc_RemoveFromSuperview;

#pragma mark ====================== 特殊属性

//float value
-(UISlider*(^)(float value))tc_value;

//float minimumValue
-(UISlider*(^)(float minimumValue))tc_minimumValue;

//float maximumValue
-(UISlider*(^)(float maximumValue))tc_maximumValue;

//UIImage *minimumValueImage
-(UISlider*(^)(UIImage *minimumValueImage))tc_minimumValueImage;;

//UIImage *maximumValueImage`
-(UISlider*(^)(UIImage *maximumValueImage))tc_maximumValueImage;

//BOOL continuous
-(UISlider*(^)(BOOL continuous))tc_continuous;

//UIColor *minimumTrackTintColor
-(UISlider*(^)(UIColor *minimumTrackTintColor))tc_minimumTrackTintColor;

//UIColor *maximumTrackTintColor
-(UISlider*(^)(UIColor *maximumTrackTintColor))tc_maximumTrackTintColor;

//UIColor *thumbTintColor
-(UISlider*(^)(UIColor *thumbTintColor))tc_thumbTintColor;

#pragma mark ====================== 通用属性

-(UISlider*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UISlider*(^)(CGRect rect))tc_FrameRect;

-(UISlider*(^)(CGRect bounds))tc_Bounds;


-(UISlider*(^)(NSInteger tag))tc_Tag;


-(UISlider*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UISlider*(^)(CGPoint center))tc_CenterPoint;

-(UISlider*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UISlider*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UISlider*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UISlider*(^)(CALayer *mask))tc_Mask;

-(UISlider*(^)(CGAffineTransform transform))tc_Transform;

-(UISlider*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;


-(UISlider*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UISlider*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UISlider*(^)(CGFloat alpha))tc_Alpha;

-(UISlider*(^)(BOOL opaque))tc_Opaque;

-(UISlider*(^)(BOOL hidden))tc_Hidden;

-(UISlider*(^)(UIColor *BGColor))tc_BGColor;

-(UISlider*(^)(tcColor color))tc_BGColorEnum;

-(UISlider*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UISlider*(^)(UIView *maskView))tc_MaskView;

-(UISlider*(^)(UIColor *tintColor))tc_TintColor;


@end
