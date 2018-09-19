//
//  ViewController1.m
//  JMBadge
//
//  Created by Jianmei on 2018/9/19.
//  Copyright © 2018 Jianmei. All rights reserved.
//

#import "ViewController1.h"
#import "UIView+Badge.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton new];
    [btn setTitle:@"你好啊" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];    
    [btn showBadgeWithStyle:JMBadgeStyleNumber value:99 animationType:JMBadgeAnimTypeScale];

    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 60, 30);
    
    
    UIButton *btn1 = [UIButton new];
    [btn1 setTitle:@"按钮二" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn1 showBadgeWithStyle:JMBadgeStyleNew value:99 animationType:JMBadgeAnimTypeNone];
    
    [self.view addSubview:btn1];
    btn1.frame = CGRectMake(100, 150, 60, 30);
    
    
    UIButton *btn2 = [UIButton new];
    [btn2 setTitle:@"按钮三" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn2 showBadgeWithStyle:JMBadgeStyleNumber value:99 animationType:JMBadgeAnimTypeNone];
    
    [self.view addSubview:btn2];
    btn2.frame = CGRectMake(100, 200, 60, 30);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
