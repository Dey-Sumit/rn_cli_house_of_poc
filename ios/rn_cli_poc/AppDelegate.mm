#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>

//#import "PlistModule.h"
#import "React/RCTBridge.h"
#import "React/RCTRootView.h"
#import "rn_cli_poc-Bridging-Header.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"rn_cli_poc";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};
  
  // Get the path to the plist file
  NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    
  // Read the contents of the plist file into a dictionary
  NSDictionary *plistDict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
  // Print the plist values
  NSLog(@"Plist Values: %@", plistDict);


  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
