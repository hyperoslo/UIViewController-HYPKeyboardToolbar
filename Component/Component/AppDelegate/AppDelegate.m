#import "AppDelegate.h"

#import "ViewController.h"

#import "NSObject+HYPTesting.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    if ([NSObject isUnitTesting]) return YES;

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = [ViewController new];

    [self.window makeKeyAndVisible];

    return YES;
}

@end
