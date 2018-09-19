//
//  RootTabBarController.m
//  JMBadge
//
//  Created by Jianmei on 2018/9/18.
//  Copyright © 2018 Jianmei. All rights reserved.
//

#import "RootTabBarController.h"
#import "ViewController.h"
#import "UITabBarItem+Badge.h"
#import "UIView+Badge.h"
#import "UIBarButtonItem+Badge.h"
#import "ViewController1.h"



@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self listenDeviceRotation];
    [self setupTabbar];
    [self setupTabbarBadge];
    [self setupNaviBarItems];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)setupTabbar
{
    UIViewController *leftVC = [UIViewController new];
    ViewController1 *rightVC = [ViewController1 new];
    self.viewControllers = @[rightVC, leftVC];
    
    UITabBarItem *leftItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    leftVC.tabBarItem = leftItem;
    UITabBarItem *rightItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:1];
    rightVC.tabBarItem = rightItem;
}

- (void)setupTabbarBadge
{
    UITabBarItem *firstItem = self.tabBar.items.firstObject;
    //it is necessary to adjust badge position
    firstItem.badgeCenterOffset = CGPointMake(0, 0);
    [firstItem showBadgeWithStyle:JMBadgeStyleRedDot value:0 animationType:JMBadgeAnimTypeNone];
}

- (void)setupNaviBarItems
{
    //configure navi item
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_list.png"]
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(onBarItemClicked:)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //show example of customize badge`s centerOffset property
    leftItem.badgeCenterOffset = CGPointMake(-8, 0);
    [leftItem showBadge];
}


- (void)listenDeviceRotation
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleDeviceRotation:)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
}

#pragma mark -- handle action
- (void)handleDeviceRotation:(id)obj
{
    //do nothing
}

- (void)onBarItemClicked:(UIBarButtonItem *)sender
{
    [sender clearBadge];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
