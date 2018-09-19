//
//  WZLBadgeProtocol.h
//  CMTApp
//
//  Created by Jianmei on 2018/9/18.
//  Copyright © 2018 ucarinc.com. All rights reserved.
//

#ifndef JMBadgeProtocol_h
#define JMBadgeProtocol_h

#pragma mark -- types definition

#define kBadgeBreatheAniKey     @"breathe"
#define kBadgeRotateAniKey      @"rotate"
#define kBadgeShakeAniKey       @"shake"
#define kBadgeScaleAniKey       @"scale"
#define kBadgeBounceAniKey      @"bounce"

//key for associative methods during runtime
static char badgeLabelKey;
static char badgeBgColorKey;
static char badgeFontKey;
static char badgeTextColorKey;
static char badgeAniTypeKey;
static char badgeFrameKey;
static char badgeCenterOffsetKey;
static char badgeMaximumBadgeNumberKey;
static char badgeRadiusKey;

typedef NS_ENUM(NSUInteger, JMBadgeStyle)
{
    JMBadgeStyleRedDot = 0,          /* red dot style */
    JMBadgeStyleNumber,              /* badge with number */
    JMBadgeStyleNew                  /* badge with a fixed text "new" */
};

typedef NS_ENUM(NSUInteger, JMBadgeAnimType)
{
    JMBadgeAnimTypeNone = 0,         /* without animation, badge stays still */
    JMBadgeAnimTypeScale,            /* scale effect */
    JMBadgeAnimTypeShake,            /* shaking effect */
    JMBadgeAnimTypeBounce,           /* bouncing effect */
    JMBadgeAnimTypeBreathe           /* breathing light effect, which makes badge more attractive */
};
#pragma mark -- protocol definition

@protocol JMBadgeProtocol <NSObject>

@required

@property (nonatomic, strong) UILabel *badge;                       /* badge entity, which is adviced not to set manually */
@property (nonatomic, strong) UIFont *badgeFont;                    /* [UIFont boldSystemFontOfSize:9] by default if not set */
@property (nonatomic, strong) UIColor *badgeBgColor;                /* red color by default if not set */
@property (nonatomic, strong) UIColor *badgeTextColor;              /* white color by default if not set */
@property (nonatomic, assign) CGRect badgeFrame;                    /* we have optimized the badge frame and center.
                                                                     This property is adviced not to set manually */

@property (nonatomic, assign) CGPoint  badgeCenterOffset;           /* offset from right-top corner. {0,0} by default */
/* For x, negative number means left offset
 For y, negative number means bottom offset */

@property (nonatomic, assign) JMBadgeAnimType aniType;               /* NOTE that this is not animation type of badge's
                                                                     appearing, nor  hidding*/

@property (nonatomic, assign) NSInteger badgeMaximumBadgeNumber;    /*for JMBadgeStyleNumber style badge,
                                                                     if badge value is above badgeMaximumBadgeNumber,
                                                                     "badgeMaximumBadgeNumber+" will be printed. */

@property (nonatomic, assign) CGFloat badgeRadius;
// nomal use for red dot style of badge

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
 *   @param aniType JMBadgeAnimType type
 */
- (void)showBadgeWithStyle:(JMBadgeStyle)style
                     value:(NSInteger)value
             animationType:(JMBadgeAnimType)aniType;


/**
 *  clear badge
 */
- (void)clearBadge;


@end

#endif /* WZLBadgeProtocol_h */
