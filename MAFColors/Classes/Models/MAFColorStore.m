//
//  MAFColorStore.m
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14.
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import "MAFColorStore.h"
#import "UIColor+MAFColors.h"

@interface MAFColorStore ()

@property (nonatomic, copy) NSArray *colors;

@end

@implementation MAFColorStore

+ (instancetype)sharedStore
{
    static MAFColorStore *sharedStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[self alloc] init];
    });
    return sharedStore;
}

- (id)init
{
    self = [super init];
    if (!self) {
        _colors = [NSArray array];
    }
    return self;
}

- (NSArray *)allColors
{
    return self.colors;
}

- (NSArray *)colors
{
    if (!_colors) {
        _colors = @[ [UIColor iosRedOrangeColor],
                     [UIColor iosOrangeColor],
                     [UIColor iosYellowColor],
                     [UIColor iosGrayColor],
                     [UIColor iosTealColor],
                     [UIColor iosBlueColor],
                     [UIColor iosPurpleColor],
                     [UIColor iosDarkPinkColor],
                     [UIColor iosDarkGrayColor],
                     [UIColor iosLightGreenColor],
                     [UIColor iosSkyBlueColor],
                     [UIColor iosLightGreenColor],
                     [UIColor iosPinkColor],
                     [UIColor iosLightPinkColor],
                     [UIColor iosWhiteColor],
                     [UIColor iosBrightRedColor],
                     [UIColor iosBlackColor],
                     [UIColor iosGrayColor],
                     [UIColor iosRedColor] ];
    }
    return _colors;
}

@end
