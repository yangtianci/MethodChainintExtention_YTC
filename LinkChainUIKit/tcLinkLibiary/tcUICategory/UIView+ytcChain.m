//
//  UIView+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UIView+ytcChain.h"


@implementation UIView (ytcChain)


#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(UIView *view))callBack{
    
    UIView *view = [[UIView alloc]init];
    callBack(view);
    return view;
}


-(UIView*(^)(UIView *SuperView))tc_SuperView{
    return ^UIView *(UIView *SuperView){
        [SuperView addSubview:self];
        return self;
    };
}

#pragma mark ====================== 特殊属性

-(UIView *(^)(UIView *))tc_SubView{
    return ^UIView *(UIView *subView){
        [self addSubview:subView];
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UIView*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UIView *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UIView*(^)(CGRect rect))tc_FrameRect{
    return ^UIView *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UIView*(^)(CGRect bounds))tc_Bounds{
    return ^UIView *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UIView*(^)(NSInteger tag))tc_Tag{
    return ^UIView *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UIView*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UIView *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UIView*(^)(CGPoint center))tc_CenterPoint{
    return ^UIView *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UIView*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UIView *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UIView*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UIView *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UIView*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UIView *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UIView*(^)(CALayer *mask))tc_Mask{
    return ^UIView *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UIView*(^)(CGAffineTransform transform))tc_Transform{
    return ^UIView *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UIView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UIView *(GestureType gesture, id Target, SEL selctor){
        
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

-(UIView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UIView *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UIView*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UIView *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UIView*(^)(CGFloat alpha))tc_Alpha{
    return ^UIView *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UIView*(^)(BOOL opaque))tc_Opaque{
    return ^UIView *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UIView*(^)(BOOL hidden))tc_Hidden{
    return ^UIView *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UIView*(^)(UIColor *BGColor))tc_BGColor{
    return ^UIView *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UIView*(^)(tcColor color))tc_BGColorEnum{
    return ^UIView *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UIView*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UIView *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UIView*(^)(UIView *maskView))tc_MaskView{
    return ^UIView *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UIView*(^)(UIColor *tintColor))tc_TintColor{
    return ^UIView *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}



@end
