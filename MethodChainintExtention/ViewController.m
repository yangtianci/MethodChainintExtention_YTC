//
//  ViewController.m
//  MethodChainintExtention
//
//  Created by YangTianCi on 2017/8/3.
//  Copyright © 2017年 ytc. All rights reserved.
//

#import "ViewController.h"

#import "UILabel+TcChainEX.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self ConfigurationUI];
    
}

-(void)ConfigurationUI{
    
    //label测试
    UILabel *fir = [UILabel LabelWithCallBack:^(UILabel *label) {
        label.tc_Text(@"akkgkarg").tc_Align(NSTextAlignmentCenter).tc_Frame(10,10,100,100).tc_TextColor([UIColor redColor]);
    }];
    [self.view addSubview:fir];
    
    
    
    //ImgView
    UIImageView *imgV = [[UIImageView alloc]init];
    
    imgV.contentMode = UIViewContentModeTop;
    
    
    
    
    
    
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
