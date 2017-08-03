//
//  UILabel+TcChainEX.m
//  测试专用项目
//
//  Created by YangTianCi on 2017/8/3.
//  Copyright © 2017年 QianBuXian. All rights reserved.
//

#import "UILabel+TcChainEX.h"

@implementation UILabel (TcChainEX)


+(UILabel*)LabelWithCallBack:(void(^)(UILabel *))callBack{
    UILabel *label = [[UILabel alloc]init];
    callBack(label);
    return label;
}

-(UILabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))tc_Frame{
    
    return ^UILabel *(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

-(UILabel *(^)(UIColor *))tc_BGColor{
    return ^UILabel*(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

-(UILabel *(^)(NSInteger))tc_Tag{
    return ^UILabel*(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


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




@end
