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

-(void(^)())tc_RemoveFromSuperview{
    return ^void(){
        [self removeFromSuperview];
    };
}

#pragma mark ====================== 特殊属性

//NSString *text
-(UITextField*(^)(NSString *text))tc_text{
    return ^UITextField *(NSString *text){
        self.text = text;
        return self;
    };
}

//NSAttributedString *attributedText
-(UITextField*(^)(NSAttributedString *attributedText))tc_attributedText{
    return ^UITextField *(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

//UIColor *textColor
-(UITextField*(^)(UIColor *textColor))tc_textColor{
    return ^UITextField *(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

//UIFont *font
-(UITextField*(^)(UIFont *font))tc_font{
    return ^UITextField *(UIFont *font){
        self.font = font;
        return self;
    };
}

//NSTextAlignment textAlignment
-(UITextField*(^)(NSTextAlignment textAlignment))tc_textAlignment{
    return ^UITextField *(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

//UITextBorderStyle borderStyle
-(UITextField*(^)(UITextBorderStyle borderStyle))tc_borderStyle{
    return ^UITextField *(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}

//NSDictionary<NSString *, id> *defaultTextAttributes
-(UITextField*(^)(NSDictionary<NSString *, id> *defaultTextAttributes))tc_defaultTextAttributes{
    return ^UITextField *(NSDictionary<NSString *, id> *defaultTextAttributes){
        self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}

//NSString *placeholder
-(UITextField*(^)(NSString *placeholder))tc_placeholder{
    return ^UITextField *(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}

//NSAttributedString *attributedPlaceholder
-(UITextField*(^)(NSAttributedString *attributedPlaceholder))tc_attributedPlaceholder{
    return ^UITextField *(NSAttributedString *attributedPlaceholder){
        self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}

//BOOL clearsOnBeginEditing
-(UITextField*(^)(BOOL clearsOnBeginEditing))tc_clearsOnBeginEditing{
    return ^UITextField *(BOOL clearsOnBeginEditing){
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

//BOOL adjustsFontSizeToFitWidth
-(UITextField*(^)(BOOL adjustsFontSizeToFitWidth))tc_adjustsFontSizeToFitWidth{
    return ^UITextField *(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

//CGFloat minimumFontSize
-(UITextField*(^)(CGFloat minimumFontSize))tc_minimumFontSize{
    return ^UITextField *(CGFloat minimumFontSize){
        self.minimumFontSize = minimumFontSize;
        return self;
    };
}

//id<UITextFieldDelegate> delegate
-(UITextField*(^)(id<UITextFieldDelegate> delegate))tc_delegate{
    return ^UITextField *(id<UITextFieldDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

//UIImage *background
-(UITextField*(^)(UIImage *background))tc_background{
    return ^UITextField *(UIImage *background){
        self.background = background;
        return self;
    };
}

//UIImage *disabledBackground
-(UITextField*(^)(UIImage *disabledBackground))tc_disabledBackground{
    return ^UITextField *(UIImage *disabledBackground){
        self.disabledBackground = disabledBackground;
        return self;
    };
}

//NSDictionary<NSString *, id> *typingAttributes
-(UITextField*(^)(NSDictionary<NSString *, id> *typingAttributes))tc_typingAttributes{
    return ^UITextField *(NSDictionary<NSString *, id> *typingAttributes){
        self.typingAttributes = typingAttributes;
        return self;
    };
}

//UITextFieldViewMode  clearButtonMode
-(UITextField*(^)(UITextFieldViewMode  clearButtonMode))tc_clearButtonModed{
    return ^UITextField *(UITextFieldViewMode  clearButtonMode){
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}

//UIView *leftView
-(UITextField*(^)(UIView *leftView))tc_leftView{
    return ^UITextField *(UIView *leftView){
        self.leftView = leftView;
        return self;
    };
}

//UITextFieldViewMode leftViewMode
-(UITextField*(^)(UITextFieldViewMode leftViewMode))tc_leftViewMode{
    return ^UITextField *(UITextFieldViewMode leftViewMode){
        self.leftViewMode = leftViewMode;
        return self;
    };
}

//UIView *rightView
-(UITextField*(^)(UIView *rightView))tc_rightView{
    return ^UITextField *(UIView *rightView){
        self.rightView = rightView;
        return self;
    };
}

//UITextFieldViewMode rightViewMode
-(UITextField*(^)(UITextFieldViewMode rightViewMode))tc_rightViewMode{
    return ^UITextField *(UITextFieldViewMode rightViewMode){
        self.rightViewMode = rightViewMode;
        return self;
    };
}

//UIView *inputView
-(UITextField*(^)(UIView *inputView))tc_inputView{
    return ^UITextField *(UIView *inputView){
        self.inputView = inputView;
        return self;
    };
}

//UIView *inputAccessoryView
-(UITextField*(^)(UIView *inputAccessoryView))tc_inputAccessoryView{
    return ^UITextField *(UIView *inputAccessoryView){
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

//BOOL clearsOnInsertion
-(UITextField*(^)(BOOL clearsOnInsertion))tc_clearsOnInsertion{
    return ^UITextField *(BOOL clearsOnInsertion){
        self.clearsOnInsertion = clearsOnInsertion;
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
