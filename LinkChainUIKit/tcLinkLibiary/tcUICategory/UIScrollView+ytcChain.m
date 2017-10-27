//
//  UIScrollView+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UIScrollView+ytcChain.h"

@implementation UIScrollView (ytcChain)

#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(UIScrollView *scrollView))callBack{
    
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    callBack(scrollView);
    return scrollView;
}


-(UIScrollView*(^)(UIView *SuperView))tc_SuperView{
    return ^UIScrollView *(UIView *SuperView){
        [SuperView addSubview:self];
        return self;
    };
}

-(void(^)())tc_RemoveFromSuperview{
    return ^void(){
        [self removeFromSuperview];
    };
}


#pragma mark ====================== 特殊属性

//CGPoint contentOffset
-(UIScrollView *(^)(CGPoint contentOffset))tc_ContentOffset{
    return ^UIScrollView *(CGPoint contentOffset){
        self.contentOffset = contentOffset;
        return self;
    };
}

//CGSize contentSize
-(UIScrollView *(^)(CGSize contentSize))tc_ContentSize{
    return ^UIScrollView *(CGSize contentSize){
        self.contentSize = contentSize;
        return self;
    };
}

//UIEdgeInsets contentInset
-(UIScrollView *(^)(UIEdgeInsets contentInset))tc_ContentInset{
    return ^UIScrollView *(UIEdgeInsets contentInset){
        self.contentInset = contentInset;
        return self;
    };
}

//id<UIScrollViewDelegate> delegate
-(UIScrollView *(^)(id<UIScrollViewDelegate> delegate))tc_Delegate{
    return ^UIScrollView *(id<UIScrollViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

//BOOL directionalLockEnabled
-(UIScrollView *(^)(BOOL directionalLockEnabled))tc_DirectionalLockEnabled{
    return ^UIScrollView *(BOOL directionalLockEnabled){
        self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

//BOOL bounces
-(UIScrollView *(^)(BOOL bounces))tc_Bounces{
    return ^UIScrollView *(BOOL bounces){
        self.bounces = bounces;
        return self;
    };
}

//BOOL alwaysBounceVertical
-(UIScrollView *(^)(BOOL alwaysBounceVertical))tc_AlwaysBounceVertical{
    return ^UIScrollView *(BOOL alwaysBounceVertical){
        self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

//BOOL alwaysBounceHorizontal
-(UIScrollView *(^)(BOOL alwaysBounceHorizontal))tc_AlwaysBounceHorizontal{
    return ^UIScrollView *(BOOL alwaysBounceHorizontal){
        self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

//BOOL pagingEnabled
-(UIScrollView *(^)(BOOL pagingEnabled))tc_PagingEnabled{
    return ^UIScrollView *(BOOL pagingEnabled){
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}

//BOOL scrollEnabled
-(UIScrollView *(^)(BOOL scrollEnabled))tc_ScrollEnabled{
    return ^UIScrollView *(BOOL scrollEnabled){
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}

//BOOL                         showsHorizontalScrollIndicator
-(UIScrollView *(^)(BOOL                         showsHorizontalScrollIndicator))tc_ShowsHorizontalScrollIndicator{
    return ^UIScrollView *(BOOL                         showsHorizontalScrollIndicator){
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

//BOOL showsVerticalScrollIndicator
-(UIScrollView *(^)(BOOL showsVerticalScrollIndicator))tc_ShowsVerticalScrollIndicator{
    return ^UIScrollView *(BOOL showsVerticalScrollIndicator){
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

//UIEdgeInsets scrollIndicatorInsets
-(UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))tc_ScrollIndicatorInsets{
    return ^UIScrollView *(UIEdgeInsets scrollIndicatorInsets){
        self.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

//UIScrollViewIndicatorStyle indicatorStyle
-(UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))tc_IndicatorStyle{
    return ^UIScrollView *(UIScrollViewIndicatorStyle indicatorStyle){
        self.indicatorStyle = indicatorStyle;
        return self;
    };
}

//CGFloat decelerationRate
-(UIScrollView *(^)(CGFloat decelerationRate))tc_DecelerationRate{
    return ^UIScrollView *(CGFloat decelerationRate){
        self.decelerationRate = decelerationRate;
        return self;
    };
}

//UIScrollViewIndexDisplayMode indexDisplayMode
-(UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))tc_IndexDisplayMode{
    return ^UIScrollView *(UIScrollViewIndexDisplayMode indexDisplayMode){
        self.indexDisplayMode = indexDisplayMode;
        return self;
    };
}

//- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
-(UIScrollView *(^)(CGPoint contentOffset, BOOL *animated))tc_SetContentOffset{
    return ^UIScrollView *(CGPoint contentOffset, BOOL *animated){
        
        [self setContentOffset:contentOffset animated:animated];
        
        return self;
    };
}

//- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
-(UIScrollView *(^)(CGRect rect, BOOL animated))tc_ScrollRectToVisible{
    return ^UIScrollView *(CGRect rect, BOOL animated){
        
        [self scrollRectToVisible:rect animated:animated];
        
        return self;
    };
}

//CGFloat minimumZoomScale
-(UIScrollView *(^)(CGFloat minimumZoomScale))tc_MinimumZoomScale{
    return ^UIScrollView *(CGFloat minimumZoomScale){
        self.minimumZoomScale = minimumZoomScale;
        return self;
    };
}

//CGFloat maximumZoomScale
-(UIScrollView *(^)(CGFloat maximumZoomScale))tc_MaximumZoomScale{
    return ^UIScrollView *(CGFloat maximumZoomScale){
        self.maximumZoomScale = maximumZoomScale;
        return self;
    };
}

//BOOL  scrollsToTop
-(UIScrollView *(^)(BOOL scrollsToTop))tc_ScrollsToTop{
    return ^UIScrollView *(BOOL scrollsToTop){
        self.scrollsToTop = scrollsToTop;
        return self;
    };
}

//UIScrollViewKeyboardDismissMode keyboardDismissMode
-(UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))tc_KeyboardDismissMode{
    return ^UIScrollView *(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UIScrollView*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UIScrollView *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UIScrollView*(^)(CGRect rect))tc_FrameRect{
    return ^UIScrollView *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UIScrollView*(^)(CGRect bounds))tc_Bounds{
    return ^UIScrollView *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UIScrollView*(^)(NSInteger tag))tc_Tag{
    return ^UIScrollView *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UIScrollView*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UIScrollView *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UIScrollView*(^)(CGPoint center))tc_CenterPoint{
    return ^UIScrollView *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UIScrollView*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UIScrollView *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UIScrollView*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UIScrollView *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UIScrollView*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UIScrollView *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UIScrollView*(^)(CALayer *mask))tc_Mask{
    return ^UIScrollView *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UIScrollView*(^)(CGAffineTransform transform))tc_Transform{
    return ^UIScrollView *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UIScrollView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UIScrollView *(GestureType gesture, id Target, SEL selctor){
        
        UIGestureRecognizer *gestureObject;
        switch (gesture) {
            case GestureType_Pan:
                gestureObject = [[UIPanGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            case GestureType_Pinch:
                gestureObject = [[UIPinchGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            case GestureType_Rotation:
                gestureObject = [[UIRotationGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            case GestureType_Tap:
                gestureObject = [[UITapGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            case GestureType_LongPress:
                gestureObject = [[UILongPressGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            case GestureType_Swipe:
                gestureObject = [[UISwipeGestureRecognizer alloc]initWithTarget:Target action:selctor];
                break;
            default:
                break;
        }
        gestureObject.delegate = Target;
        [self addGestureRecognizer:gestureObject];
        self.userInteractionEnabled = YES;
        return self;
    };
}

-(UIScrollView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UIScrollView *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UIScrollView*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UIScrollView *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UIScrollView*(^)(CGFloat alpha))tc_Alpha{
    return ^UIScrollView *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UIScrollView*(^)(BOOL opaque))tc_Opaque{
    return ^UIScrollView *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UIScrollView*(^)(BOOL hidden))tc_Hidden{
    return ^UIScrollView *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UIScrollView*(^)(UIColor *BGColor))tc_BGColor{
    return ^UIScrollView *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UIScrollView*(^)(tcColor color))tc_BGColorEnum{
    return ^UIScrollView *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UIScrollView*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UIScrollView *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UIScrollView*(^)(UIView *maskView))tc_MaskView{
    return ^UIScrollView *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UIScrollView*(^)(UIColor *tintColor))tc_TintColor{
    return ^UIScrollView *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}




@end
