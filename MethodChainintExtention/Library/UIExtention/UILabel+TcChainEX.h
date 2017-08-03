//
//  UILabel+TcChainEX.h
//  测试专用项目
//
//  Created by YangTianCi on 2017/8/3.
//  Copyright © 2017年 QianBuXian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (TcChainEX)

+(UILabel*)LabelWithCallBack:(void(^)(UILabel *label))callBack;

-(UILabel *(^)(NSString *))setText;

-(UILabel *(^)(UIColor *))setTextColor;

-(UILabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))setFrame;

-(UILabel *(^)(NSInteger))setFontSize;

-(UILabel *(^)(NSTextAlignment))setAlign;

@end
