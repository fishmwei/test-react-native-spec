//
//  AppDelegate.m
//  TestRN53
//
//  Created by huangmingwei on 2018/2/9.
//  Copyright © 2018年 huangmingwei. All rights reserved.
//

#import "AppDelegate.h"

#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "ViewController.h"

@implementation AppDelegate
    
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
    {
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        UIViewController *rootViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
        
        self.window.rootViewController = rootViewController;
        [self.window makeKeyAndVisible];
        return YES;
    }
    
    @end

