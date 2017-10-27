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

-(void(^)())tc_RemoveFromSuperview;

#pragma mark ====================== 特殊属性

//CGPoint contentOffset
-(UIScrollView *(^)(CGPoint contentOffset))tc_ContentOffset;

//CGSize contentSize
-(UIScrollView *(^)(CGSize contentSize))tc_ContentSize;

//UIEdgeInsets contentInset
-(UIScrollView *(^)(UIEdgeInsets contentInset))tc_ContentInset;

//id<UIScrollViewDelegate> delegate
-(UIScrollView *(^)(id<UIScrollViewDelegate> delegate))tc_Delegate;

//BOOL directionalLockEnabled
-(UIScrollView *(^)(BOOL directionalLockEnabled))tc_DirectionalLockEnabled;

//BOOL bounces
-(UIScrollView *(^)(BOOL bounces))tc_Bounces;

//BOOL alwaysBounceVertical
-(UIScrollView *(^)(BOOL alwaysBounceVertical))tc_AlwaysBounceVertical;

//BOOL alwaysBounceHorizontal
-(UIScrollView *(^)(BOOL alwaysBounceHorizontal))tc_AlwaysBounceHorizontal;

//BOOL pagingEnabled
-(UIScrollView *(^)(BOOL pagingEnabled))tc_PagingEnabled;

//BOOL scrollEnabled
-(UIScrollView *(^)(BOOL scrollEnabled))tc_ScrollEnabled;

//BOOL                         showsHorizontalScrollIndicator
-(UIScrollView *(^)(BOOL                         showsHorizontalScrollIndicator))tc_ShowsHorizontalScrollIndicator;

//BOOL showsVerticalScrollIndicator
-(UIScrollView *(^)(BOOL showsVerticalScrollIndicator))tc_ShowsVerticalScrollIndicator;

//UIEdgeInsets scrollIndicatorInsets
-(UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))tc_ScrollIndicatorInsets;

//UIScrollViewIndicatorStyle indicatorStyle
-(UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))tc_IndicatorStyle;

//CGFloat decelerationRate
-(UIScrollView *(^)(CGFloat decelerationRate))tc_DecelerationRate;

//UIScrollViewIndexDisplayMode indexDisplayMode
-(UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))tc_IndexDisplayMode;

//- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
-(UIScrollView *(^)(CGPoint contentOffset, BOOL *animated))tc_SetContentOffset;

//- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
-(UIScrollView *(^)(CGRect rect, BOOL animated))tc_ScrollRectToVisible;

//CGFloat minimumZoomScale
-(UIScrollView *(^)(CGFloat minimumZoomScale))tc_MinimumZoomScale;

//CGFloat maximumZoomScale
-(UIScrollView *(^)(CGFloat maximumZoomScale))tc_MaximumZoomScale;

//BOOL  scrollsToTop
-(UIScrollView *(^)(BOOL scrollsToTop))tc_ScrollsToTop;

//UIScrollViewKeyboardDismissMode keyboardDismissMode
-(UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))tc_KeyboardDismissMode;

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
