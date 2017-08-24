//
//  ViewController.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "ViewController.h"

#import "ytcChainHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIButton *button = [UIButton tc_InitWithBlock:^(UIButton *button) {
        button.tc_FrameValue(100,100,100,100).tc_BGColorEnum(tcColor_Cyan).tc_SuperView(self.view);
    }];
    
    
    
    

    
    /*
    UIView *outterView = [UIView tc_InitWithBlock:^(UIView *view) {
       view.tc_FrameValue(20,30,100,100).tc_BGColorEnum(tcColor_Blue).tc_SuperView(self.view);
    }];
    
    
    UIView *innerView = [UIView tc_InitWithBlock:^(UIView *view) {
        view.tc_FrameValue(0,0,50,50).tc_BGColorEnum(tcColor_Cyan).tc_SuperView(outterView);
    }];

    */
    
}

-(void)testMethod{
    
    NSLog(@"啦啦啦啦");
    
    self.view.tc_BGColorEnum(tcColor_Gray);
    
}

-(void)Taplalalalla:(UITapGestureRecognizer*)tap{
    
    
    NSLog(@"lalall");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
