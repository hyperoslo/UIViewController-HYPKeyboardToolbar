#import "AppDelegate.h"

#import "ViewController.h"

#import "NSObject+HYPTesting.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    if ([NSObject isUnitTesting]) return YES;

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    navigationController.toolbarHidden = NO;
    self.window.rootViewController = navigationController;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
