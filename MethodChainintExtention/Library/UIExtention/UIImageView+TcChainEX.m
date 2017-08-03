//
//  UIImageView+TcChainEX.m
//  MethodChainintExtention
//
//  Created by YangTianCi on 2017/8/3.
//  Copyright © 2017年 ytc. All rights reserved.
//

#import "UIImageView+TcChainEX.h"

@implementation UIImageView (TcChainEX)



+(UIImageView*)ImageViewWithCallBack:(void(^)(UIImageView *))callBack{
    UIImageView *imageV = [[UIImageView alloc]init];
    callBack(imageV);
    return imageV;
}

-(UIImageView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))tc_Frame{
    return ^UIImageView *(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

-(UIImageView *(^)(UIColor *))tc_BGColor{
    return ^UIImageView*(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

-(UIImageView *(^)(UIImage *))tc_Image{
    return ^UIImageView*(UIImage *img){
        self.image = img;
        return self;
    };
}

-(UIImageView *(^)(BOOL))tc_isUserInterAEnabl{
    return ^UIImageView*(BOOL isUIAE){
        self.userInteractionEnabled = isUIAE;
        return self;
    };
}

-(UIImageView *(^)(UIViewContentMode))tc_contentMode{
    return ^UIImageView*(UIViewContentMode mode){
        self.contentMode = mode;
        return self;
    };
}


@end
