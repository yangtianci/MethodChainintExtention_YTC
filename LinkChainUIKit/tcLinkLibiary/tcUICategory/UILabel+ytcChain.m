//
//  UILabel+ytcChain.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "UILabel+ytcChain.h"

@implementation UILabel (ytcChain)

#pragma mark ====================== 其他函数


+(instancetype)tc_InitWithBlock:(void(^)(UILabel *label))callBack{
    
    UILabel *label = [[UILabel alloc]init];
    callBack(label);
    return label;
}


-(UILabel*(^)(UIView *SuperView))tc_SuperView{
    return ^UILabel *(UIView *SuperView){
        [SuperView addSubview:self];
        return self;
    };
}

-(void(^)())tc_RemoveFromSuperview{
    return ^void(){
        [self removeFromSuperview];
    };
}

-(void(^)())tc_SizeToFit{
    return ^void(){
        [self sizeToFit];
    };
}


#pragma mark ====================== 特殊属性

-(UILabel *(^)(NSString *))tc_Text{
    return ^UILabel*(NSString *text){
        self.text = text;
        return self;
    };
}

-(UILabel *(^)(UIColor *))tc_TextColor{
    return ^UILabel*(UIColor *color){
        self.textColor = color;
        return self;
    };
}


-(UILabel *(^)(NSInteger))tc_FontSize{
    return ^UILabel*(NSInteger fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

-(UILabel *(^)(NSTextAlignment))tc_Align{
    return ^UILabel*(NSTextAlignment align){
        self.textAlignment = align;
        return self;
    };
}

//NSLineBreakMode lineBreakMode
-(UILabel *(^)(NSLineBreakMode lineBreakMode))tc_LineBreakMode{
    return ^UILabel*(NSLineBreakMode lineBreakMode){
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

//NSAttributedString *attributedText
-(UILabel *(^)(NSAttributedString *attributedText))tc_AttributedText{
    return ^UILabel*(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

//UIColor *highlightedTextColor
-(UILabel *(^)(UIColor *highlightedTextColor))tc_HighlightedTextColor{
    return ^UILabel*(UIColor *highlightedTextColor){
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

//BOOL highlighted
-(UILabel *(^)(BOOL highlighted))tc_Highlighted{
    return ^UILabel*(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

//NSInteger numberOfLines
-(UILabel *(^)(NSInteger numberOfLines))tc_NumberOfLines{
    return ^UILabel*(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}


//BOOL adjustsFontSizeToFitWidth
-(UILabel *(^)(BOOL adjustsFontSizeToFitWidth))tc_AdjustsFontSizeToFitWidth{
    return ^UILabel*(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

//UIBaselineAdjustment baselineAdjustment
-(UILabel *(^)(UIBaselineAdjustment baselineAdjustment))tc_BaselineAdjustment{
    return ^UILabel*(UIBaselineAdjustment baselineAdjustment){
        self.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

//CGFloat minimumScaleFactor
-(UILabel *(^)(CGFloat minimumScaleFactor))tc_MinimumScaleFactor{
    return ^UILabel*(CGFloat minimumScaleFactor){
        self.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

//CGFloat preferredMaxLayoutWidth
-(UILabel *(^)(CGFloat preferredMaxLayoutWidth))tc_PreferredMaxLayoutWidth{
    return ^UILabel*(CGFloat preferredMaxLayoutWidth){
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

#pragma mark ====================== 通用属性

-(UILabel*(^)(float x,float y,float width,float height))tc_FrameValue{
    return ^UILabel *(float x,float y,float width,float height){
        if (x <= 0 || y <=0 || width <= 0 || height <= 0) {
            NSLog(@"ytc_Link:属性值为空或负数, 需检查");
        }
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
    
}

-(UILabel*(^)(CGRect rect))tc_FrameRect{
    return ^UILabel *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UILabel*(^)(CGRect bounds))tc_Bounds{
    return ^UILabel *(CGRect bounds){
        self.frame = bounds;
        return self;
    };
}


-(UILabel*(^)(NSInteger tag))tc_Tag{
    return ^UILabel *(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


-(UILabel*(^)(CGFloat x, CGFloat y))tc_CenterValue{
    return ^UILabel *(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

-(UILabel*(^)(CGPoint center))tc_CenterPoint{
    return ^UILabel *(CGPoint center){
        self.center = center;
        return self;
    };
}

-(UILabel*(^)(BOOL userInterFaceEnable))tc_UserInterA{
    return ^UILabel *(BOOL userInterFaceEnable){
        self.userInteractionEnabled = userInterFaceEnable;
        return self;
    };
}

-(UILabel*(^)(CGFloat CornerRadius))tc_CorRadiu{
    return ^UILabel *(CGFloat CornerRadius){
        self.layer.cornerRadius = CornerRadius;
        return self;
    };
}

-(UILabel*(^)(BOOL MaskToBounds))tc_MaskToB{
    return ^UILabel *(BOOL MaskToBounds){
        self.layer.masksToBounds = MaskToBounds;
        return self;
    };
}

-(UILabel*(^)(CALayer *mask))tc_Mask{
    return ^UILabel *(CALayer *mask){
        self.layer.mask = mask;
        return self;
    };
}

-(UILabel*(^)(CGAffineTransform transform))tc_Transform{
    return ^UILabel *(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}

-(UILabel*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure{
    return ^UILabel *(GestureType gesture, id Target, SEL selctor){
        
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

-(UILabel*(^)(BOOL multipleTouchEnabled))tc_MultiTouch{
    return ^UILabel *(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}

-(UILabel*(^)(BOOL clipsToBounds))tc_ClipsBounce{
    return ^UILabel *(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(UILabel*(^)(CGFloat alpha))tc_Alpha{
    return ^UILabel *(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(UILabel*(^)(BOOL opaque))tc_Opaque{
    return ^UILabel *(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(UILabel*(^)(BOOL hidden))tc_Hidden{
    return ^UILabel *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(UILabel*(^)(UIColor *BGColor))tc_BGColor{
    return ^UILabel *(UIColor *BGColor){
        self.backgroundColor = BGColor;
        return self;
    };
}

-(UILabel*(^)(tcColor color))tc_BGColorEnum{
    return ^UILabel *(tcColor color){
        self.backgroundColor = [SubJoinTool tcColorTransformWith:color];
        return self;
    };
}

-(UILabel*(^)(UIViewContentMode contentMode))tc_ContentMode{
    return ^UILabel *(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(UILabel*(^)(UIView *maskView))tc_MaskView{
    return ^UILabel *(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

-(UILabel*(^)(UIColor *tintColor))tc_TintColor{
    return ^UILabel *(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}





@end
