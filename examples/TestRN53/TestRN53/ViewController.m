//
//  ViewController.m
//  TestRN493
//
//  Created by huangmingwei on 2017/11/15.
//  Copyright © 2017年 huangmingwei. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>


@interface ViewController (){
    RCTRootView *_rootView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self loadReactView];
    
    
}


- (void)loadReactView {
    
    
    NSURL *jsCodeLocation;
    
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle" subdirectory:@"bundle"];
//    if (!jsCodeLocation) {
        jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

//    }
    
    _rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                            moduleName:@"RN53"
                                     initialProperties:nil
                                         launchOptions:nil];
    _rootView.backgroundColor = [UIColor lightGrayColor];
    
    _rootView.frame = CGRectMake(0, 0, 300, 400);
    
    [self.view addSubview:_rootView];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn addTarget:self action:@selector(reloadView) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 410, 300, 44);
    [self.view addSubview:btn];
    [btn setTitle:@"reload many times" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    
    
}

- (void)reloadView {
    for (int i = 0; i < 10000; i++) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [_rootView.bridge reload];
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

