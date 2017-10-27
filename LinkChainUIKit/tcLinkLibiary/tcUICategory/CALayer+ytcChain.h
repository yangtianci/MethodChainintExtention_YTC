//
//  CALayer+ytcChain.h
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/8/21.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface CALayer (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(CALayer *layer))callBack;

-(CALayer*(^)(CALayer *SuperLayer))tc_SuperLayer;
//AddSubLayer
-(CALayer*(^)(CALayer *Sublayer))tc_AddSublayer;

#pragma mark ====================== 操作型函数修改

//SetNeedsDisplay
-(CALayer*(^)())tc_SetNeedsDisplay;

//DisplayIfNeeded
-(CALayer*(^)())tc_DisplayIfNeeded;

//layoutIfNeeded
-(CALayer*(^)())tc_LayoutIfNeeded;

//Remove
-(id (^)())tc_RemoveFromSuperLayer;

#pragma mark ====================== 通用属性

//BackGround
-(CALayer*(^)(CGColorRef backgroundColor))tc_BackgroundColor;

//Bounds
-(CALayer*(^)(CGRect bounds))tc_Bounds;

//Frame
-(CALayer*(^)(CGRect frame))tc_Frame;

//Position
-(CALayer*(^)(CGPoint position))tc_Position;

//Anchorpoint
-(CALayer*(^)(CGPoint anchorPoint))tc_AnchorPoint;

//Transform
-(CALayer*(^)(CATransform3D transform))tc_Transform;

//ShadowColor
-(CALayer*(^)(CGColorRef shadowColor))tc_ShadowColor;

//float shadowOpacity
-(CALayer*(^)(float shadowOpacity))tc_ShadowOpacity;

//CGSize shadowOffset
-(CALayer*(^)(CGSize shadowOffset))tc_ShadowOffset;

//CGFloat shadowRadius
-(CALayer*(^)(CGFloat shadowRadius))tc_ShadowRadius;

//CGPathRef shadowPath
-(CALayer*(^)(CGPathRef shadowPath))tc_ShadowPath;

//Mask
-(CALayer*(^)(CALayer *mask))tc_Mask;

//Hidden
-(CALayer*(^)(BOOL hidden))tc_Hidden;

//Opacity
-(CALayer*(^)(float opacity))tc_Opacity;

//CornerRadius
-(CALayer*(^)(CGFloat cornerRadius))tc_CornerRadius;

//MasksToBounds
-(CALayer*(^)(BOOL masksToBounds))tc_MasksToBounds;

//NeedsDisplayOnBoundsChange
-(CALayer*(^)(BOOL needsDisplayOnBoundsChange))tc_NeedsDisplayOnBoundsChange;

#pragma mark ====================== 特殊属性

//NSString *name
-(CALayer*(^)(NSString *name))tc_Name;

//id <CALayerDelegate> delegate
-(CALayer*(^)(id delegate))tc_Delegate;

@end
