//
//  AppDelegate.m
//  LinkChainUIKit
//
//  Created by mac on 17/8/6.
//  Copyright © 2017年 YTCProuduct. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

/**
 
 已完成开发计划:
 
 *************** V1.1
 * 通用函数: 初始化.添加.设置基本参数等 20个通用函数编写
 * Button.ImageView.Label.ScrollView.TextField.View 控件的通用函数编写
 * 优化颜色添加函数以及手势添加函数, 使用枚举使函数更易用
 * 添加头文件,通用协议
 * 添加通用小工具-SubJoinTool
 
 */


/**

当前开发计划:




*/


 /**
  
  后续开发计划-v1.2:
  
  * 根据控件不同添加特定函数
    - View添加 tc_SubView() 用来添加子控件
 
 */


/**
 
 一般---------
 
 Frame 2
 Bounds
 Tag
 Alp
 hidden
 tintColor
 BGColor
 Opeque
 Userinterface
 手势
 
 Center 2
 CornerS
 MaskB
 mask
 Transform
 多点手势
 clipTobounce
 contentMode
 maskView
 
 ----------特殊
 
 add
 insert
 bring
 UIEdg
 
 */
 



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
