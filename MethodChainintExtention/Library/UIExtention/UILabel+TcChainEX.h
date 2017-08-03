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

-(UILabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))tc_Frame;

-(UILabel *(^)(UIColor *))tc_BGColor;

-(UILabel *(^)(NSInteger))tc_Tag;

-(UILabel *(^)(NSString *))tc_Text;

-(UILabel *(^)(UIColor *))tc_TextColor;

-(UILabel *(^)(NSInteger))tc_FontSize;

-(UILabel *(^)(NSTextAlignment))tc_Align;


@end
