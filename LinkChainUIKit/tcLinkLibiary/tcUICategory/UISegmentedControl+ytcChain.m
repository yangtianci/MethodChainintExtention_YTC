//
//  UISegmentedControl+ytcChain.m
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UISegmentedControl+ytcChain.h"

@implementation UISegmentedControl (ytcChain)


#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISegmentedControl *segementCtrl))callBack{
    
    UISegmentedControl *segementCtrl = [[UISegmentedControl alloc]init];
    callBack(segementCtrl);
    return segementCtrl;
}


-(UISegmentedControl*(^)(UIView *SuperView))tc_SuperView{
    return ^UISegmentedControl *(UIView *SuperView){
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

//BOOL momentary
-(UISegmentedControl*(^)(BOOL momentary))tc_momentary{
    return ^UISegmentedControl *(BOOL momentary){
        self.momentary = momentary;
        return self;
    };
}

//BOOL apportionsSegmentWidthsByContent
-(UISegmentedControl*(^)(BOOL apportionsSegmentWidthsByContent))tc_apportionsSegmentWidthsByContent{
    return ^UISegmentedControl *(BOOL apportionsSegmentWidthsByContent){
        self.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent;
        return self;
    };
}

//NSInteger selectedSegmentIndex
-(UISegmentedControl*(^)(NSInteger selectedSegmentIndex))tc_selectedSegmentIndex{
    return ^UISegmentedControl *(NSInteger selectedSegmentIndex){
        self.selectedSegmentIndex = selectedSegmentIndex;
        return self;
    };
}

//UIColor *tintColor
-(UISegmentedControl*(^)(UIColor *tintColor))tc_tintColor{
    return ^UISegmentedControl *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}




#pragma mark ====================== 通用属性

-(UISegmentedControl*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UISegmentedControl *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UISegmentedControl*(^)(CGRect rect))tc_FrameRect{
    return ^UISegmentedControl *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UISegmentedControl*(^)(CGRect bounds))tc_Bounds{
    return ^UISegmentedControl *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UISegmentedControl*(^)(NSInteger tag))tc_Tag{
    return ^UISegmentedControl *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UISegmentedControl*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UISegmentedControl *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UISegmentedControl*(^)(CGPoint center))tc_CenterPoint{
    return ^UISegmentedControl *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UISegmentedControl*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UISegmentedControl *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UISegmentedControl*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UISegmentedControl *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UISegmentedControl*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UISegmentedControl *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UISegmentedControl*(^)(CALayer *mask))tc_Mask{
    return ^UISegmentedControl *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UISegmentedControl*(^)(CGAffineTransform transform))tc_Transform{
    return ^UISegmentedControl *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UISegmentedControl*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UISegmentedControl *(GestureType gesture, id Target, SEL selctor){
        
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


-(UISegmentedControl*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UISegmentedControl *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UISegmentedControl*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UISegmentedControl *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UISegmentedControl*(^)(CGFloat alpha))tc_Alpha{
    return ^UISegmentedControl *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UISegmentedControl*(^)(BOOL opaque))tc_Opaque{
    return ^UISegmentedControl *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UISegmentedControl*(^)(BOOL hidden))tc_Hidden{
    return ^UISegmentedControl *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UISegmentedControl*(^)(UIColor *BGColor))tc_BGColor{
    return ^UISegmentedControl *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UISegmentedControl*(^)(tcColor color))tc_BGColorEnum{
    return ^UISegmentedControl *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UISegmentedControl*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UISegmentedControl *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UISegmentedControl*(^)(UIView *maskView))tc_MaskView{
    return ^UISegmentedControl *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UISegmentedControl*(^)(UIColor *tintColor))tc_TintColor{
    return ^UISegmentedControl *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}



@end
