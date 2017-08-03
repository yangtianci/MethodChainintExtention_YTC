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
       label.setText(@"label").setTextColor([UIColor brownColor]).setFontSize(30).setFrame(20,20,200,50).setAlign(NSTextAlignmentCenter);
    }];
    [self.view addSubview:fir];

    
    
    UILabel *firT = [[UILabel alloc]init];
    [self.view addSubview:firT];
    firT.setText(@"label").setTextColor([UIColor brownColor]).setFontSize(30).setFrame(20,20,200,50).setAlign(NSTextAlignmentCenter);
    
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
