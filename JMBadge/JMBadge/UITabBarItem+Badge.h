//
//  UITabBarItem+Badge.h
//  CMTApp
//
//  Created by Jianmei on 2018/9/18.
//  Copyright © 2018 ucarinc.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JMBadgeProtocol.h"
#import "UIView+Badge.h"

@interface UITabBarItem (Badge)<JMBadgeProtocol>

/**
 *  show badge with red dot style and WBadgeAnimTypeNone by default.
 */
- (void)showBadge;

/**
 *  showBadge
 *
 *  @param style WBadgeStyle type
 *  @param value (if 'style' is WBadgeStyleRedDot or WBadgeStyleNew,
 this value will be ignored. In this case, any value will be ok.)
 *   @param aniType
 */
- (void)showBadgeWithStyle:(JMBadgeStyle)style
                     value:(NSInteger)value
             animationType:(JMBadgeAnimType)aniType;


/**
 *  clear badge(hide badge)
 */
- (void)clearBadge;

/**
 *  make bage(if existing) not hiden
 */
- (void)resumeBadge;
@end
