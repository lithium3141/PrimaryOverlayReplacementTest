// Copyright 2014 Omni Development, Inc. All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.

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
