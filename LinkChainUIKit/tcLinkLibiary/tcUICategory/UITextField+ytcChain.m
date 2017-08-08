//
//  UITextField+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UITextField+ytcChain.h"

@implementation UITextField (ytcChain)

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UITextField *textField))callBack{
    
    UITextField *textField = [[UITextField alloc]init];
    callBack(textField);
    return textField;
}


-(UITextField*(^)(UIView *SuperView))tc_SuperView{
    return ^UITextField *(UIView *SuperView){
        [SuperView addSubview:self];
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UITextField*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UITextField *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UITextField*(^)(CGRect rect))tc_FrameRect{
    return ^UITextField *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UITextField*(^)(CGRect bounds))tc_Bounds{
    return ^UITextField *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UITextField*(^)(NSInteger tag))tc_Tag{
    return ^UITextField *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UITextField*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UITextField *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UITextField*(^)(CGPoint center))tc_CenterPoint{
    return ^UITextField *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UITextField*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UITextField *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UITextField*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UITextField *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UITextField*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UITextField *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UITextField*(^)(CALayer *mask))tc_Mask{
    return ^UITextField *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UITextField*(^)(CGAffineTransform transform))tc_Transform{
    return ^UITextField *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UITextField*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UITextField *(GestureType gesture, id Target, SEL selctor){
        
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


-(UITextField*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UITextField *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UITextField*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UITextField *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UITextField*(^)(CGFloat alpha))tc_Alpha{
    return ^UITextField *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UITextField*(^)(BOOL opaque))tc_Opaque{
    return ^UITextField *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UITextField*(^)(BOOL hidden))tc_Hidden{
    return ^UITextField *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UITextField*(^)(UIColor *BGColor))tc_BGColor{
    return ^UITextField *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UITextField*(^)(tcColor color))tc_BGColorEnum{
    return ^UITextField *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UITextField*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UITextField *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UITextField*(^)(UIView *maskView))tc_MaskView{
    return ^UITextField *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UITextField*(^)(UIColor *tintColor))tc_TintColor{
    return ^UITextField *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}


@end
