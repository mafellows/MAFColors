//
//  MAFAppDelegate.m
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import "MAFAppDelegate.h"
#import "MAFColorTableViewController.h"

@implementation MAFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    MAFColorTableViewController *tableVC = [[MAFColorTableViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:tableVC];
    self.window.rootViewController = navController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
