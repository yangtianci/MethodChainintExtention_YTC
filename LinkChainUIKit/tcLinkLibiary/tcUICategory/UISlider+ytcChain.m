//
//  UISlider+ytcChain.m
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UISlider+ytcChain.h"

@implementation UISlider (ytcChain)

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISlider *silder))callBack{
    UISlider *silder = [[UISlider alloc]init];
    callBack(silder);
    return silder;
}


-(UISlider*(^)(UIView *SuperView))tc_SuperView{
    return ^UISlider *(UIView *SuperView){
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

//float value
-(UISlider*(^)(float value))tc_value{
    return ^UISlider *(float value){
        self.value = value;
        return self;
    };
}


//float minimumValue
-(UISlider*(^)(float minimumValue))tc_minimumValue{
    return ^UISlider *(float minimumValue){
        self.minimumValue = minimumValue;
        return self;
    };
}

//float maximumValue
-(UISlider*(^)(float maximumValue))tc_maximumValue{
    return ^UISlider *(float maximumValue){
        self.maximumValue = maximumValue;
        return self;
    };
}

//UIImage *minimumValueImage
-(UISlider*(^)(UIImage *minimumValueImage))tc_minimumValueImage{
    return ^UISlider *(UIImage *minimumValueImage){
        self.minimumValueImage = minimumValueImage;
        return self;
    };
}

//UIImage *maximumValueImage`
-(UISlider*(^)(UIImage *maximumValueImage))tc_maximumValueImage{
    return ^UISlider *(UIImage *maximumValueImage){
        self.maximumValueImage = maximumValueImage;
        return self;
    };
}

//BOOL continuous
-(UISlider*(^)(BOOL continuous))tc_continuous{
    return ^UISlider *(BOOL continuous){
        self.continuous = continuous;
        return self;
    };
}

//UIColor *minimumTrackTintColor
-(UISlider*(^)(UIColor *minimumTrackTintColor))tc_minimumTrackTintColor{
    return ^UISlider *(UIColor *minimumTrackTintColor){
        self.minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}

//UIColor *maximumTrackTintColor
-(UISlider*(^)(UIColor *maximumTrackTintColor))tc_maximumTrackTintColor{
    return ^UISlider *(UIColor *maximumTrackTintColor){
        self.maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

//UIColor *thumbTintColor
-(UISlider*(^)(UIColor *thumbTintColor))tc_thumbTintColor{
    return ^UISlider *(UIColor *thumbTintColor){
        self.thumbTintColor = thumbTintColor;
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UISlider*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UISlider *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UISlider*(^)(CGRect rect))tc_FrameRect{
    return ^UISlider *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UISlider*(^)(CGRect bounds))tc_Bounds{
    return ^UISlider *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UISlider*(^)(NSInteger tag))tc_Tag{
    return ^UISlider *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UISlider*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UISlider *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UISlider*(^)(CGPoint center))tc_CenterPoint{
    return ^UISlider *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UISlider*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UISlider *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UISlider*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UISlider *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UISlider*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UISlider *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UISlider*(^)(CALayer *mask))tc_Mask{
    return ^UISlider *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UISlider*(^)(CGAffineTransform transform))tc_Transform{
    return ^UISlider *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UISlider*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UISlider *(GestureType gesture, id Target, SEL selctor){
        
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


-(UISlider*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UISlider *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UISlider*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UISlider *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UISlider*(^)(CGFloat alpha))tc_Alpha{
    return ^UISlider *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UISlider*(^)(BOOL opaque))tc_Opaque{
    return ^UISlider *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UISlider*(^)(BOOL hidden))tc_Hidden{
    return ^UISlider *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UISlider*(^)(UIColor *BGColor))tc_BGColor{
    return ^UISlider *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UISlider*(^)(tcColor color))tc_BGColorEnum{
    return ^UISlider *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UISlider*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UISlider *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UISlider*(^)(UIView *maskView))tc_MaskView{
    return ^UISlider *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UISlider*(^)(UIColor *tintColor))tc_TintColor{
    return ^UISlider *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}


@end
