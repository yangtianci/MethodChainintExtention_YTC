//
//  UIImageView+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UIImageView+ytcChain.h"

#import "SubJoinTool.h"

@implementation UIImageView (ytcChain)

#pragma mark ====================== 其他函数

+(UIImageView*)tc_InitWithBlock:(void(^)(UIImageView *imgView))callBack{
    UIImageView *imgView = [[UIImageView alloc]init];
    callBack(imgView);
    return imgView;
}

-(UIImageView*(^)(UIView *SuperView))tc_SuperView{
    return ^UIImageView *(UIView *SuperView){
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

-(UIImageView *(^)(UIImage *))tc_ImageObject{
    return ^UIImageView*(UIImage *img){
        self.image = img;
        return self;
    };
}

-(UIImageView *(^)(NSString *imgName))tc_ImageName{
    return ^UIImageView*(NSString *imgName){
        self.image = [UIImage imageNamed:imgName];
        return self;
    };
}

-(UIImageView *(^)(UIImage *))tc_HighlightedImageObject{
    return ^UIImageView*(UIImage *img){
        self.highlightedImage = img;
        return self;
    };
}

-(UIImageView *(^)(NSString *imgName))tc_HighlightedImageName{
    return ^UIImageView*(NSString *imgName){
        self.highlightedImage = [UIImage imageNamed:imgName];
        return self;
    };
}

//highlighted
-(UIImageView *(^)(BOOL highlighted))tc_Highlighted{
    return ^UIImageView*(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

//NSArray<UIImage *> *animationImages
-(UIImageView *(^)(NSArray<UIImage *> *animationImages))tc_AnimationImages{
    return ^UIImageView*(NSArray<UIImage *> *animationImages){
        self.animationImages = animationImages;
        return self;
    };
}

//NSArray<UIImage *> *highlightedAnimationImages
-(UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))tc_HighlightedAnimationImages{
    return ^UIImageView*(NSArray<UIImage *> *highlightedAnimationImages){
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

//NSTimeInterval animationDuration
-(UIImageView *(^)(NSTimeInterval animationDuration))tc_AnimationDuration{
    return ^UIImageView*(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}

//NSInteger animationRepeatCount
-(UIImageView *(^)(NSInteger animationRepeatCount))tc_AnimationRepeatCount{
    return ^UIImageView*(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

-(UIImageView *(^)())tc_StartAnimating{
    return ^UIImageView*(){
        [self startAnimating];
        return self;
    };
}

-(UIImageView *(^)())tc_StopAnimating{
    return ^UIImageView*(){
        [self stopAnimating];
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UIImageView*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UIImageView *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UIImageView*(^)(CGRect rect))tc_FrameRect{
    return ^UIImageView *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UIImageView*(^)(CGRect bounds))tc_Bounds{
    return ^UIImageView *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UIImageView*(^)(NSInteger tag))tc_Tag{
    return ^UIImageView *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UIImageView*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UIImageView *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UIImageView*(^)(CGPoint center))tc_CenterPoint{
    return ^UIImageView *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UIImageView*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UIImageView *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UIImageView*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UIImageView *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UIImageView*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UIImageView *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UIImageView*(^)(CALayer *mask))tc_Mask{
    return ^UIImageView *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UIImageView*(^)(CGAffineTransform transform))tc_Transform{
    return ^UIImageView *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UIImageView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UIImageView *(GestureType gesture, id Target, SEL selctor){
        
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


-(UIImageView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UIImageView *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UIImageView*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UIImageView *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UIImageView*(^)(CGFloat alpha))tc_Alpha{
    return ^UIImageView *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UIImageView*(^)(BOOL opaque))tc_Opaque{
    return ^UIImageView *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UIImageView*(^)(BOOL hidden))tc_Hidden{
    return ^UIImageView *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UIImageView*(^)(UIColor *BGColor))tc_BGColor{
    return ^UIImageView *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UIImageView*(^)(tcColor color))tc_BGColorEnum{
    return ^UIImageView *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UIImageView*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UIImageView *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UIImageView*(^)(UIView *maskView))tc_MaskView{
    return ^UIImageView *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UIImageView*(^)(UIColor *tintColor))tc_TintColor{
    return ^UIImageView *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}


#pragma mark ====================== 特殊属性赋值








@end
