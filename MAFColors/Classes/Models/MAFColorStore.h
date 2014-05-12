//
//  MAFColorStore.h
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14.
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAFColorStore : NSObject

+ (instancetype)sharedStore;

/*
 * @return All single pallete colors from ios7colors.com. 
 * Does not include colors that are included in the gradients 
 * unless they already have their own single color pallete.
 */

- (NSArray *)allColors; 

@end
