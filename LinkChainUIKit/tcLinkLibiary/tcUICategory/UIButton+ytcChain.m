//
//  UIButton+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UIButton+ytcChain.h"

@implementation UIButton (ytcChain)

#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(UIButton *button))callBack{
    
    UIButton *button = [[UIButton alloc]init];
    callBack(button);
    return button;
}


-(UIButton*(^)(UIView *SuperView))tc_SuperView{
    return ^UIButton *(UIView *SuperView){
        [SuperView addSubview:self];
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UIButton*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UIButton *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UIButton*(^)(CGRect rect))tc_FrameRect{
    return ^UIButton *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UIButton*(^)(CGRect bounds))tc_Bounds{
    return ^UIButton *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UIButton*(^)(NSInteger tag))tc_Tag{
    return ^UIButton *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UIButton*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UIButton *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UIButton*(^)(CGPoint center))tc_CenterPoint{
    return ^UIButton *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UIButton*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UIButton *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UIButton*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UIButton *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UIButton*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UIButton *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UIButton*(^)(CALayer *mask))tc_Mask{
    return ^UIButton *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UIButton*(^)(CGAffineTransform transform))tc_Transform{
    return ^UIButton *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UIButton*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UIButton *(GestureType gesture, id Target, SEL selctor){
        
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


-(UIButton*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UIButton *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UIButton*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UIButton *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UIButton*(^)(CGFloat alpha))tc_Alpha{
    return ^UIButton *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UIButton*(^)(BOOL opaque))tc_Opaque{
    return ^UIButton *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UIButton*(^)(BOOL hidden))tc_Hidden{
    return ^UIButton *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UIButton*(^)(UIColor *BGColor))tc_BGColor{
    return ^UIButton *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UIButton*(^)(tcColor color))tc_BGColorEnum{
    return ^UIButton *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UIButton*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UIButton *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UIButton*(^)(UIView *maskView))tc_MaskView{
    return ^UIButton *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UIButton*(^)(UIColor *tintColor))tc_TintColor{
    return ^UIButton *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}



@end
