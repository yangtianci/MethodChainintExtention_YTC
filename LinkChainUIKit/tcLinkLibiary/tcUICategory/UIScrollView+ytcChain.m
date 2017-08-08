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
