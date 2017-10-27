//
//  UITextField+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainProtocol.h"

#import "ytcChainHeader.h"

@interface UITextField (ytcChain)<ytcChainProtocolDelegate>

#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UITextField *textField))callBack;

-(UITextField*(^)(UIView *SuperView))tc_SuperView;

-(void(^)())tc_RemoveFromSuperview;

#pragma mark ====================== 特殊属性

//NSString *text
-(UITextField*(^)(NSString *text))tc_text;

//NSAttributedString *attributedText
-(UITextField*(^)(NSAttributedString *attributedText))tc_attributedText;

//UIColor *textColor
-(UITextField*(^)(UIColor *textColor))tc_textColor;

//UIFont *font
-(UITextField*(^)(UIFont *font))tc_font;

//NSTextAlignment textAlignment
-(UITextField*(^)(NSTextAlignment textAlignment))tc_textAlignment;

//UITextBorderStyle borderStyle
-(UITextField*(^)(UITextBorderStyle borderStyle))tc_borderStyle;

//NSDictionary<NSString *, id> *defaultTextAttributes
-(UITextField*(^)(NSDictionary<NSString *, id> *defaultTextAttributes))tc_defaultTextAttributes;

//NSString *placeholder
-(UITextField*(^)(NSString *placeholder))tc_placeholder;

//NSAttributedString *attributedPlaceholder
-(UITextField*(^)(NSAttributedString *attributedPlaceholder))tc_attributedPlaceholder;

//BOOL clearsOnBeginEditing
-(UITextField*(^)(BOOL clearsOnBeginEditing))tc_clearsOnBeginEditing;

//BOOL adjustsFontSizeToFitWidth
-(UITextField*(^)(BOOL adjustsFontSizeToFitWidth))tc_adjustsFontSizeToFitWidth;

//CGFloat minimumFontSize
-(UITextField*(^)(CGFloat minimumFontSize))tc_minimumFontSize;

//id<UITextFieldDelegate> delegate
-(UITextField*(^)(id<UITextFieldDelegate> delegate))tc_delegate;

//UIImage *background
-(UITextField*(^)(UIImage *background))tc_background;

//UIImage *disabledBackground
-(UITextField*(^)(UIImage *disabledBackground))tc_disabledBackground;

//NSDictionary<NSString *, id> *typingAttributes
-(UITextField*(^)(NSDictionary<NSString *, id> *typingAttributes))tc_typingAttributes;

//UITextFieldViewMode  clearButtonMode
-(UITextField*(^)(UITextFieldViewMode  clearButtonMode))tc_clearButtonModed;

//UIView *leftView
-(UITextField*(^)(UIView *leftView))tc_leftView;

//UITextFieldViewMode leftViewMode
-(UITextField*(^)(UITextFieldViewMode leftViewMode))tc_leftViewMode;

//UIView *rightView
-(UITextField*(^)(UIView *rightView))tc_rightView;

//UITextFieldViewMode rightViewMode
-(UITextField*(^)(UITextFieldViewMode rightViewMode))tc_rightViewMode;

//UIView *inputView
-(UITextField*(^)(UIView *inputView))tc_inputView;

//UIView *inputAccessoryView
-(UITextField*(^)(UIView *inputAccessoryView))tc_inputAccessoryView;

//BOOL clearsOnInsertion
-(UITextField*(^)(BOOL clearsOnInsertion))tc_clearsOnInsertion;

#pragma mark ====================== 通用属性

-(UITextField*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UITextField*(^)(CGRect rect))tc_FrameRect;

-(UITextField*(^)(CGRect bounds))tc_Bounds;

-(UITextField*(^)(NSInteger tag))tc_Tag;

-(UITextField*(^)(CGFloat alpha))tc_Alpha;

-(UITextField*(^)(BOOL hidden))tc_Hidden;

-(UITextField*(^)(UIColor *tintColor))tc_TintColor;

-(UITextField*(^)(UIColor *BGColor))tc_BGColor;

-(UITextField*(^)(tcColor color))tc_BGColorEnum;

-(UITextField*(^)(BOOL opaque))tc_Opaque;

-(UITextField*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UITextField*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UITextField*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UITextField*(^)(CGPoint center))tc_CenterPoint;

-(UITextField*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UITextField*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UITextField*(^)(CALayer *mask))tc_Mask;

-(UITextField*(^)(CGAffineTransform transform))tc_Transform;

-(UITextField*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UITextField*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UITextField*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UITextField*(^)(UIView *maskView))tc_MaskView;


@end
