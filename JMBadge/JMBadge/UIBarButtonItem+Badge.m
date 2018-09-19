//
//  UIBarButtonItem+Badge.m
//  JMBadge
//
//  Created by Jianmei on 2018/9/19.
//  Copyright © 2018 Jianmei. All rights reserved.
//

#import "UIBarButtonItem+Badge.h"
#import <objc/runtime.h>

#define kActualView     [self getActualBadgeSuperView]


@implementation UIBarButtonItem (Badge)

#pragma mark -- public methods

/**
 *  show badge with red dot style and JMBadgeAnimTypeNone by default.
 */
- (void)showBadge
{
    [kActualView showBadge];
}

/**
 *  showBadge
 *
 *  @param style JMBadgeStyle type
 *  @param value (if 'style' is JMBadgeStyleRedDot or JMBadgeStyleNew,
 this value will be ignored. In this case, any value will be ok.)
 *   @param aniType
 */
- (void)showBadgeWithStyle:(JMBadgeStyle)style
                     value:(NSInteger)value
             animationType:(JMBadgeAnimType)aniType
{
    [kActualView showBadgeWithStyle:style value:value animationType:aniType];
}


/**
 *  clear badge
 */
- (void)clearBadge
{
    [kActualView clearBadge];
}

- (void)resumeBadge
{
    [kActualView resumeBadge];
}

#pragma mark -- private method

/**
 *  Because UIBarButtonItem is kind of NSObject, it is not able to directly attach badge.
 This method is used to find actual view (non-nil) inside UIBarButtonItem instance.
 *
 *  @return view
 */
- (UIView *)getActualBadgeSuperView
{
    return [self valueForKeyPath:@"_view"];//use KVC to hack actual view
}

#pragma mark -- setter/getter
- (UILabel *)badge
{
    return kActualView.badge;
}

- (void)setBadge:(UILabel *)label
{
    [kActualView setBadge:label];
}

- (UIFont *)badgeFont
{
    return kActualView.badgeFont;
}

- (void)setBadgeFont:(UIFont *)badgeFont
{
    [kActualView setBadgeFont:badgeFont];
}

- (UIColor *)badgeBgColor
{
    return [kActualView badgeBgColor];
}

- (void)setBadgeBgColor:(UIColor *)badgeBgColor
{
    [kActualView setBadgeBgColor:badgeBgColor];
}

- (UIColor *)badgeTextColor
{
    return [kActualView badgeTextColor];
}

- (void)setBadgeTextColor:(UIColor *)badgeTextColor
{
    [kActualView setBadgeTextColor:badgeTextColor];
}

- (JMBadgeAnimType)aniType
{
    return [kActualView aniType];
}

- (void)setAniType:(JMBadgeAnimType)aniType
{
    [kActualView setAniType:aniType];
}

- (CGRect)badgeFrame
{
    return [kActualView badgeFrame];
}

- (void)setBadgeFrame:(CGRect)badgeFrame
{
    [kActualView setBadgeFrame:badgeFrame];
}

- (CGPoint)badgeCenterOffset
{
    return [kActualView badgeCenterOffset];
}

- (void)setBadgeCenterOffset:(CGPoint)badgeCenterOffset
{
    [kActualView setBadgeCenterOffset:badgeCenterOffset];
}

- (NSInteger)badgeMaximumBadgeNumber
{
    return [kActualView badgeMaximumBadgeNumber];
}

- (void)setBadgeMaximumBadgeNumber:(NSInteger)badgeMaximumBadgeNumber
{
    [kActualView setBadgeMaximumBadgeNumber:badgeMaximumBadgeNumber];
}
@end
