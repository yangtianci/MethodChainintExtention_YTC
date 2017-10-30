//
//  ViewController.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "ViewController.h"

#import "ytcChainHeader.h"

#import <UIKit/UIKit.h>

#define kMargin 15

#define kScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@property (nonatomic,strong) UIImageView *BGImgView;

@property (nonatomic,strong) UIImageView *ExampleImgView;

@property (nonatomic,strong) UIImageView *CodeImgView;

@property (nonatomic,strong) UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSString *contentStr = @"  创建一个这样的界面, 就只需要以上代码即可, 相对以前的代码, 减少了很多不必要的换行, 并且, 将大部分属性设置放置在block中, 如果想要更改对应的属性, 直接搜索属性名称即可, 不会出现搜索出来一大片的弊端, 因为在编写的时候采用的方法是建立于苹果允许的语法规则之上的, 所以不会出现不兼容的情况, 并且, 因为是类似点语法形式的编写,所以,也可以适当的锻炼一下没有swift经验的同学.\n  相对于带来的好处来说,这个类库的学习成本实际上并没有那么高, 仅仅是在原系统的属性之上添加了类库专用的代号, 作用仅仅是防止与系统名称发生冲突.\n 最后,这个项目目前的覆盖面仅仅是UI控件的属性以及函数, 之后会持续更新, 保证覆盖更多的类库, 如果你对本类库有指导意见或者加入意愿, 联系Q.624946274";

    CGFloat fontHeight = [contentStr boundingRectWithSize:CGSizeMake(kScreenWidth - 2 * kMargin, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:15]} context:nil].size.height;
    
    self.BGImgView = [UIImageView tc_InitWithBlock:^(UIImageView *imgView) {
       imgView.tc_FrameRect(self.view.bounds).tc_ImageName(@"1").tc_SuperView(self.view).tc_ContentMode(UIViewContentModeScaleAspectFit);
    }];
    
    self.ExampleImgView = [UIImageView tc_InitWithBlock:^(UIImageView *imgView) {
        imgView.tc_ImageName(@"111").tc_SuperView(self.view).tc_FrameValue(kMargin, kMargin * 3, kScreenWidth - 2 * kMargin, 150).tc_ContentMode(UIViewContentModeScaleAspectFit);
    }];
    
    self.testLabel = [UILabel tc_InitWithBlock:^(UILabel *label) {
        label.tc_FrameValue(kMargin, CGRectGetMaxY(self.ExampleImgView.frame), kScreenWidth - 2 * kMargin, fontHeight).tc_NumberOfLines(0).tc_SuperView(self.view).tc_TextColor([UIColor whiteColor]).tc_Text(contentStr).tc_FontSize(15);
    }];
    
    self.CodeImgView = [UIImageView tc_InitWithBlock:^(UIImageView *imgView) {
        imgView.tc_FrameValue(kMargin, CGRectGetMaxY(self.testLabel.frame), kScreenWidth - 2 * kMargin, 200).tc_SuperView(self.view).tc_ImageName(@"2").tc_ContentMode(UIViewContentModeScaleAspectFit);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
