//
//  CALayer+ytcChain.m
//  LinkChainUIKit
//
//  Created by YangTianCi on 2017/8/21.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "CALayer+ytcChain.h"

@implementation CALayer (ytcChain)


#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(CALayer *layer))callBack{
    
    CALayer *layer = [[CALayer alloc]init];
    callBack(layer);
    return layer;
}

-(CALayer*(^)(CALayer *SuperLayer))tc_SuperLayer{
    return ^CALayer *(CALayer *SuperLayer){
        [SuperLayer addSublayer:self];
        return self;
    };
}

//AddSubLayer
-(CALayer*(^)(CALayer *Sublayer))tc_AddSublayer{
    return ^CALayer *(CALayer *Sublayer){
        [self addSublayer:Sublayer];
        return self;
    };
}

#pragma mark ====================== 操作型函数修改

//SetNeedsDisplay
-(CALayer*(^)())tc_SetNeedsDisplay{
    return ^CALayer *(){
        [self setNeedsDisplay];
        return self;
    };
}

//DisplayIfNeeded
-(CALayer*(^)())tc_DisplayIfNeeded{
    return ^CALayer *(){
        [self displayIfNeeded];
        return self;
    };
}

//layoutIfNeeded
-(CALayer*(^)())tc_LayoutIfNeeded{
    return ^CALayer *(){
        [self layoutIfNeeded];
        return self;
    };
}

//Remove
-(id (^)())tc_RemoveFromSuperLayer{
    return ^id (){
        [self removeFromSuperlayer];
        return nil;
    };
}

#pragma mark ====================== 通用属性

//BackGround
-(CALayer*(^)(CGColorRef backgroundColor))tc_BackgroundColor{
    return ^CALayer *(CGColorRef backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

//Bounds
-(CALayer*(^)(CGRect bounds))tc_Bounds{
    return ^CALayer *(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}

//Frame
-(CALayer*(^)(CGRect frame))tc_Frame{
    return ^CALayer *(CGRect frame){
        self.frame = frame;
        return self;
    };
}

//Position
-(CALayer*(^)(CGPoint position))tc_Position{
    return ^CALayer *(CGPoint position){
        self.position = position;
        return self;
    };
}

//Anchorpoint
-(CALayer*(^)(CGPoint anchorPoint))tc_AnchorPoint{
    return ^CALayer *(CGPoint anchorPoint){
        self.anchorPoint = anchorPoint;
        return self;
    };
}

//Transform
-(CALayer*(^)(CATransform3D transform))tc_Transform{
    return ^CALayer *(CATransform3D transform){
        self.transform = transform;
        return self;
    };
}

//ShadowColor
-(CALayer*(^)(CGColorRef shadowColor))tc_ShadowColor{
    return ^CALayer *(CGColorRef shadowColor){
        self.shadowColor = shadowColor;
        return self;
    };
}

//float shadowOpacity
-(CALayer*(^)(float shadowOpacity))tc_ShadowOpacity{
    return ^CALayer *(float shadowOpacity){
        self.shadowOpacity = shadowOpacity;
        return self;
    };
}

//CGSize shadowOffset
-(CALayer*(^)(CGSize shadowOffset))tc_ShadowOffset{
    return ^CALayer *(CGSize shadowOffset){
        self.shadowOffset = shadowOffset;
        return self;
    };
}

//CGFloat shadowRadius
-(CALayer*(^)(CGFloat shadowRadius))tc_ShadowRadius{
    return ^CALayer *(CGFloat shadowRadius){
        self.shadowRadius = shadowRadius;
        return self;
    };
}

//CGPathRef shadowPath
-(CALayer*(^)(CGPathRef shadowPath))tc_ShadowPath{
    return ^CALayer *(CGPathRef shadowPath){
        self.shadowPath = shadowPath;
        return self;
    };
}




//Mask
-(CALayer*(^)(CALayer *mask))tc_Mask{
    return ^CALayer *(CALayer *mask){
        self.mask = mask;
        return self;
    };
}


//Hidden
-(CALayer*(^)(BOOL hidden))tc_Hidden{
    return ^CALayer *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

//Opacity
-(CALayer*(^)(float opacity))tc_Opacity{
    return ^CALayer *(float opacity){
        self.opacity = opacity;
        return self;
    };
}

//CornerRadius
-(CALayer*(^)(CGFloat cornerRadius))tc_CornerRadius{
    return ^CALayer *(CGFloat cornerRadius){
        self.cornerRadius = cornerRadius;
        return self;
    };
}


//MasksToBounds
-(CALayer*(^)(BOOL masksToBounds))tc_MasksToBounds{
    return ^CALayer *(BOOL masksToBounds){
        self.masksToBounds = masksToBounds;
        return self;
    };
}

//NeedsDisplayOnBoundsChange
-(CALayer*(^)(BOOL needsDisplayOnBoundsChange))tc_NeedsDisplayOnBoundsChange{
    return ^CALayer *(BOOL needsDisplayOnBoundsChange){
        self.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange;
        return self;
    };
}

#pragma mark ====================== 特殊属性

//NSString *name
-(CALayer*(^)(NSString *name))tc_Name{
    return ^CALayer *(NSString *name){
        self.name = name;
        return self;
    };
}

//id <CALayerDelegate> delegate
-(CALayer*(^)(id delegate))tc_Delegate{
    return ^CALayer *(id delegate){
        self.delegate = delegate;
        return self;
    };
}



@end
