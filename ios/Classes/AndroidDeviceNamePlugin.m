#import "AndroidDeviceNamePlugin.h"
#if __has_include(<android_device_name/android_device_name-Swift.h>)
#import <android_device_name/android_device_name-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "android_device_name-Swift.h"
#endif

@implementation AndroidDeviceNamePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidDeviceNamePlugin registerWithRegistrar:registrar];
}
@end
