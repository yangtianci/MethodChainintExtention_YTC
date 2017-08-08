//
//  UIImageView+ytcChain.h
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ytcChainHeader.h"

#import "ytcChainProtocol.h"

@interface UIImageView (ytcChain)<ytcChainProtocolDelegate>

/**
 
 接下来的计划: 常用控件_以及_常用控件的常用部分已经整理完毕, 下来就需要针对每种不同的空间做出不同_属性改造
 
 属性总结完毕, 接下来是对手势方式的改进, 应该能达到所有人无障碍使用, 之后的更新主要保持在方法和类的添加上
 
 新增特性: 增加快捷颜色设置, 通过枚举调用
 
 */


/**
 
 一般---------
 
 Frame 2
 Bounds
 Tag
 Alp
 hidden
 tintColor
 BGColor
 Opeque
 Userinterface
 手势
 
 Center 2
 CornerS
 MaskB
 mask
 Transform
 多点手势
 clipTobounce
 contentMode
 maskView
 
 ----------特殊
 
 add
 insert
 bring
 UIEdg
 
 */


#pragma mark ====================== 其他函数

+(instancetype)tc_InitWithBlock:(void(^)(UIImageView *imgView))callBack;

-(UIImageView*(^)(UIView *SuperView))tc_SuperView;

#pragma mark ====================== 特殊属性

-(UIImageView *(^)(UIImage *))tc_Image;

#pragma mark ====================== 通用属性

-(UIImageView*(^)(float x,float y,float width,float height))tc_FrameValue;

-(UIImageView*(^)(CGRect rect))tc_FrameRect;

-(UIImageView*(^)(CGRect bounds))tc_Bounds;

-(UIImageView*(^)(NSInteger tag))tc_Tag;

-(UIImageView*(^)(CGFloat alpha))tc_Alpha;

-(UIImageView*(^)(BOOL hidden))tc_Hidden;

-(UIImageView*(^)(UIColor *tintColor))tc_TintColor;

-(UIImageView*(^)(UIColor *BGColor))tc_BGColor;

-(UIImageView*(^)(tcColor color))tc_BGColorEnum;

-(UIImageView*(^)(BOOL opaque))tc_Opaque;

-(UIImageView*(^)(BOOL userInterFaceEnable))tc_UserInterA;

-(UIImageView*(^)(GestureType gesture, id Target, SEL selctor))tc_Gestrure;

-(UIImageView*(^)(CGFloat x, CGFloat y))tc_CenterValue;

-(UIImageView*(^)(CGPoint center))tc_CenterPoint;

-(UIImageView*(^)(CGFloat CornerRadius))tc_CorRadiu;

-(UIImageView*(^)(BOOL MaskToBounds))tc_MaskToB;

-(UIImageView*(^)(CALayer *mask))tc_Mask;

-(UIImageView*(^)(CGAffineTransform transform))tc_Transform;

-(UIImageView*(^)(BOOL multipleTouchEnabled))tc_MultiTouch;

-(UIImageView*(^)(BOOL clipsToBounds))tc_ClipsBounce;

-(UIImageView*(^)(UIViewContentMode contentMode))tc_ContentMode;

-(UIImageView*(^)(UIView *maskView))tc_MaskView;




@end
