#import "TimezonePlugin.h"
#if __has_include(<timezone/timezone-Swift.h>)
#import <timezone/timezone-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "timezone-Swift.h"
#endif

@implementation TimezonePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTimezonePlugin registerWithRegistrar:registrar];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {

}


@end
