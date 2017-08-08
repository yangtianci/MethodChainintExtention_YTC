//
//  ViewController.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "ViewController.h"

#import "SubJoinTool.h"

#import "ytcChainHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    UIView;
    
    

    UIImageView *img = [[UIImageView alloc]init];
    [self.view addSubview:img];
    

   /* UIScrollView *scrollView = [UIScrollView tc_InitWithBlock:^(UIScrollView *scrollView) {
        scrollView.tc_FrameValue(100,100,100,100).tc_BGColor([UIColor redColor]).tc_Gestrure(GestureType_Tap,@selector(Taplalalalla:),self).tc_SuperView(self.view);
    }];
    
    scrollView.tc_Alpha(0.4);
    scrollView.tc_FrameValue(100,100,200,200);
    */
    

    UIImageView *imgV = [UIImageView tc_InitWithBlock:^(UIImageView *imgView) {
        imgView.tc_BGColorEnum(tcColor_Rand0m).tc_Gestrure(GestureType_Tap,self,@selector(Taplalalalla:)).tc_FrameValue(50,50,100,100).tc_Tag(20).tc_SuperView(self.view);
    }];
    
    

    
    
}

-(void)Taplalalalla:(UITapGestureRecognizer*)tap{
    
    
    NSLog(@"lalall");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
