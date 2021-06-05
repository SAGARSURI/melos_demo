#import "BrowserPlugin.h"
#if __has_include(<browser/browser-Swift.h>)
#import <browser/browser-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "browser-Swift.h"
#endif

@implementation BrowserPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBrowserPlugin registerWithRegistrar:registrar];
}
@end
