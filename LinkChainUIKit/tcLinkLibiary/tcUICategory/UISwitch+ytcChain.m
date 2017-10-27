//
//  UISwitch+ytcChain.m
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/10/27.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UISwitch+ytcChain.h"

@implementation UISwitch (ytcChain)

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UISwitch *silder))callBack{
    UISwitch *silder = [[UISwitch alloc]init];
    callBack(silder);
    return silder;
}

-(UISwitch*(^)(UIView *SuperView))tc_SuperView{
    return ^UISwitch *(UIView *SuperView){
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

//UIColor *onTintColor
-(UISwitch*(^)(UIColor *onTintColor))tc_onTintColor{
    return ^UISwitch *(UIColor *onTintColor){
        self.onTintColor = onTintColor;
        return self;
    };
}

//UIColor *tintColor
-(UISwitch*(^)(UIColor *tintColor))tc_tintColor{
    return ^UISwitch *(UIColor *tintColor){
        self.tintColor = tintColor;

        return self;
    };
}

//UIColor *thumbTintColor
-(UISwitch*(^)(UIColor *thumbTintColor))tc_thumbTintColor{
    return ^UISwitch *(UIColor *thumbTintColor){
        self.thumbTintColor = thumbTintColor;
        return self;
    };
}

//UIImage *onImage
-(UISwitch*(^)(UIImage *onImage))tc_onImage{
    return ^UISwitch *(UIImage *onImage){
        self.onImage = onImage;
        return self;
    };
}

//UIImage *offImage
-(UISwitch*(^)(UIImage *offImage))tc_offImage{
    return ^UISwitch *(UIImage *offImage){
        self.offImage = offImage;
        return self;
    };
}


//BOOL on
-(UISwitch*(^)(BOOL on))tc_on{
    return ^UISwitch *(BOOL on){
        self.on = on;
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UISwitch*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UISwitch *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UISwitch*(^)(CGRect rect))tc_FrameRect{
    return ^UISwitch *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UISwitch*(^)(CGRect bounds))tc_Bounds{
    return ^UISwitch *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UISwitch*(^)(NSInteger tag))tc_Tag{
    return ^UISwitch *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UISwitch*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UISwitch *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UISwitch*(^)(CGPoint center))tc_CenterPoint{
    return ^UISwitch *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UISwitch*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UISwitch *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UISwitch*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UISwitch *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UISwitch*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UISwitch *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UISwitch*(^)(CALayer *mask))tc_Mask{
    return ^UISwitch *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UISwitch*(^)(CGAffineTransform transform))tc_Transform{
    return ^UISwitch *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}


-(UISwitch*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UISwitch *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UISwitch*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UISwitch *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UISwitch*(^)(CGFloat alpha))tc_Alpha{
    return ^UISwitch *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UISwitch*(^)(BOOL opaque))tc_Opaque{
    return ^UISwitch *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UISwitch*(^)(BOOL hidden))tc_Hidden{
    return ^UISwitch *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UISwitch*(^)(UIColor *BGColor))tc_BGColor{
    return ^UISwitch *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UISwitch*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UISwitch *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UISwitch*(^)(UIView *maskView))tc_MaskView{
    return ^UISwitch *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UISwitch*(^)(UIColor *tintColor))tc_TintColor{
    return ^UISwitch *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

@end
