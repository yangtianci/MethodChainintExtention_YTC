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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    
    UIButton *button = [UIButton tc_InitWithBlock:^(UIButton *button) {
        button.tc_FrameValue(100,100,100,100).tc_BGColorEnum(tcColor_Cyan).tc_SuperView(self.view).tc_Gestrure(GestureType_Tap, self, @selector(viewWithTag:));
        
    }];
    

    
    /*
     
    UIView *outterView = [UIView tc_InitWithBlock:^(UIView *view) {
       view.tc_FrameValue(20,30,100,100).tc_BGColorEnum(tcColor_Blue).tc_SuperView(self.view);
    }];
    
     
     CALayer *layer = [CALayer tc_InitWithBlock:^(CALayer *layer) {
     
     layer.tc_Frame(CGRectMake(100, 100, 100, 100)).tc_BackgroundColor([UIColor yellowColor].CGColor).tc_ShadowOffset(CGSizeMake(150, 150)).tc_ShadowColor([UIColor blackColor].CGColor).tc_SuperLayer(self.view.layer).tc_CornerRadius(15).tc_MasksToBounds(YES);
     
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
