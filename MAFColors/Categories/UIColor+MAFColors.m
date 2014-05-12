//
//  UIColor+MAFColors.m
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14.
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import "UIColor+MAFColors.h"

@implementation UIColor (MAFColors)

+ (UIColor *)colorWithHexString:(NSString *)string
{
    const char *charString = [string cStringUsingEncoding:NSASCIIStringEncoding];
    long x = strtol(charString + 1, NULL, 16);
    return [UIColor _colorWithHex:x];
}

#pragma mark - Single Colors

+ (UIColor *)iosRedOrangeColor
{
    return [UIColor colorWithHexString:@"#FF3B30"]; 
}

+ (UIColor *)iosOrangeColor
{
    return [UIColor colorWithHexString:@"#FF9500"];
}

+ (UIColor *)iosYellowColor
{
    return [UIColor colorWithHexString:@"#FFCC00"];
}

+ (UIColor *)iosGreenColor
{
    return [UIColor colorWithHexString:@"#4CD964"];
}

+ (UIColor *)iosTealColor
{
    return [UIColor colorWithHexString:@"#34AADC"];
}

+ (UIColor *)iosBlueColor
{
    return [UIColor colorWithHexString:@"#007AFF"];
}

+ (UIColor *)iosPurpleColor
{
    return [UIColor colorWithHexString:@"#5856D6"];
}

+ (UIColor *)iosDarkPinkColor
{
    return [UIColor colorWithHexString:@"#FF2D55"];
}

+ (UIColor *)iosDarkGrayColor
{
    return [UIColor colorWithHexString:@"#8E8E93"];
}

+ (UIColor *)iosLightGrayColor
{
    return [UIColor colorWithRed:199.0f / 255.0f
                           green:199.0f / 255.0f
                            blue:204.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)iosSkyBlueColor
{
    return [UIColor colorWithHexString:@"#D1EEFC"];
}

+ (UIColor *)iosLightGreenColor
{
    return [UIColor colorWithHexString:@"#E0F8D8"];
}

+ (UIColor *)iosPinkColor
{
    return [UIColor colorWithHexString:@"#FF4981"];
}

+ (UIColor *)iosLightPinkColor
{
    return [UIColor colorWithHexString:@"#FFD3E0"];
}

+ (UIColor *)iosWhiteColor
{
    return [UIColor colorWithHexString:@"#F7F7F7"];
}

+ (UIColor *)iosBrightRedColor
{
    return [UIColor colorWithHexString:@"#FF1300"];
}

+ (UIColor *)iosBlackColor
{
    return [UIColor colorWithHexString:@"#1F1F21"];
}

+ (UIColor *)iosGrayColor
{
    return [UIColor colorWithHexString:@"#BDBEC2"];
}

+ (UIColor *)iosRedColor
{
    return [UIColor colorWithHexString:@"#FF3A2D"];
}

#pragma mark - Private 

+ (UIColor *)_colorWithHex:(UInt32)color
{
    unsigned char r, g, b;
    b = color & 0xFF;
    g = (color >> 8) & 0xFF;
    r = (color >> 16) & 0xFF;
    return [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:1.0f];
}

@end
