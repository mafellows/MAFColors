//
//  UIColor+MAFColors.h
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14.
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MAFColors)


/* 
 * @name   Category method for turning hexadecimal string into a UIColor
 * @param  hexadecimal string ex: '#123456'
 * @return UIColor based on that hex string
 */
+ (UIColor *)colorWithHexString:(NSString *)string;

// =================================================
// @name   Single color palletes from ios7colors.com
// @return UIColor object
// =================================================

+ (UIColor *)iosRedOrangeColor;
+ (UIColor *)iosOrangeColor;
+ (UIColor *)iosYellowColor;
+ (UIColor *)iosGreenColor;
+ (UIColor *)iosTealColor;
+ (UIColor *)iosBlueColor;
+ (UIColor *)iosPurpleColor;
+ (UIColor *)iosDarkPinkColor;
+ (UIColor *)iosDarkGrayColor;
+ (UIColor *)iosLightGrayColor;
+ (UIColor *)iosSkyBlueColor;
+ (UIColor *)iosLightGreenColor;
+ (UIColor *)iosPinkColor;
+ (UIColor *)iosLightPinkColor;
+ (UIColor *)iosWhiteColor;
+ (UIColor *)iosBrightRedColor;
+ (UIColor *)iosBlackColor;
+ (UIColor *)iosGrayColor;
+ (UIColor *)iosRedColor;

// ===================================================
// @name Colors included in gradient at ios7colors.com
// ===================================================



@end
