//
//  AppDelegate.m
//  PrimaryOverlayReplacementTest
//
//  Created by Tim Ekl on 2014.11.03.
//  Copyright (c) 2014 The Omni Group. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *redSidebar = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] initWithColor:[UIColor redColor]]];
    UINavigationController *redContent = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] initWithColor:[UIColor redColor]]];
    
    UINavigationController *blueSidebar = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] initWithColor:[UIColor blueColor]]];
    UINavigationController *blueContent = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] initWithColor:[UIColor blueColor]]];
    
    UISplitViewController *splitViewController = [[UISplitViewController alloc] init];
    splitViewController.viewControllers = @[ redSidebar, redContent ];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = splitViewController;
    [self.window makeKeyAndVisible];
    
    splitViewController.viewControllers = @[ blueSidebar, blueContent ];
    
    return YES;
}

@end
