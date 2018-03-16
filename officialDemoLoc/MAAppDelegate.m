//
//  MAAppDelegate.m
//  officialDemo2D
//
//  Created by 刘博 on 13-9-6.
//  Copyright (c) 2013年 AutoNavi. All rights reserved.
//

#import "MAAppDelegate.h"

#import <AMapFoundationKit/AMapFoundationKit.h>
#import "APIKey.h"
#import "MainViewController.h"
//#import "AllDetailViewController.h"
//#import "HTLocationXViewController.h"
//#import "HTNaviViewController.h"
#import "officialDemoLoc-Swift-Bridging-Header.h"

//#import "GpsMarkerViewController.h"

@implementation MAAppDelegate

- (void)configureAPIKey
{
    if ([APIKey length] == 0)
    {
        NSString *reason = [NSString stringWithFormat:@"apiKey为空，请检查key是否正确设置。"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:reason delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert show];
    }
    
    [AMapServices sharedServices].apiKey = (NSString *)APIKey;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self configureAPIKey];
    
    self.viewController = [[MainViewController alloc] init];
    
    self.window.rootViewController  = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.backgroundColor     = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//
//    [self configureAPIKey];

//    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"HTMapNaviViewcontroller" bundle:nil];

//    HTNaviViewController *mapTVC = (HTNaviViewController*)[storyboard instantiateViewControllerWithIdentifier:@"LocationViewController"];
//        UINavigationController *mapTVC = (UINavigationController*)[storyboard instantiateViewControllerWithIdentifier:@"NaviLocationViewController"];

//    self.window.rootViewController  = mapTVC;
//        self.window.backgroundColor     = [UIColor whiteColor];
//        [self.window makeKeyAndVisible];

    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//
//    [self configureAPIKey];
//
//    self.viewController = [[MainViewController alloc] init];
//
//    self.window.rootViewController  = [[UINavigationController alloc] initWithRootViewController:self.viewController];
//    self.window.backgroundColor     = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
//
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
 //   [self configureAPIKey];

//    GpsMarkerViewController *markerViewctrl = [[GpsMarkerViewController alloc] init];
//
//    self.window.rootViewController  = [[UINavigationController alloc] initWithRootViewController:markerViewctrl];
//    self.window.backgroundColor     = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
