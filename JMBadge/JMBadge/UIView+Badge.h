//
//  UIView+Badge.h
//  CMTApp
//
//  Created by Jianmei on 2018/9/18.
//  Copyright © 2018 ucarinc.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JMBadgeProtocol.h"

@interface UIView (Badge)<JMBadgeProtocol>

/**
 *  show badge with red dot style and JMBadgeAnimTypeNone by default.
 */
- (void)showBadge;

/**
 *  showBadge
 *
 *  @param style JMBadgeStyle type
 *  @param value (if 'style' is JMBadgeStyleRedDot or JMBadgeStyleNew,
 this value will be ignored. In this case, any value will be ok.)
 *   @param aniType JMBadgeAnimType
 */
- (void)showBadgeWithStyle:(JMBadgeStyle)style
                     value:(NSInteger)value
             animationType:(JMBadgeAnimType)aniType;

/*
 JMBadgeStyle default is JMBadgeStyleNumber
 */
- (void)showNumberBadgeWithValue:(NSInteger)value
                   animationType:(JMBadgeAnimType)aniType;

// JMBadgeStyle default is JMBadgeStyleNumber ;
// JMBadgeAnimType defualt is  JMBadgeAnimTypeNone
- (void)showNumberBadgeWithValue:(NSInteger)value;

/**
 *  clear badge(hide badge)
 */
- (void)clearBadge;

/**
 *  make bage(if existing) not hiden
 */
- (void)resumeBadge;
@end
