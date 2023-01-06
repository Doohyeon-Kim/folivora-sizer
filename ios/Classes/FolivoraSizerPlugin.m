#import "FolivoraSizerPlugin.h"
#if __has_include(<folivora_sizer/folivora_sizer-Swift.h>)
#import <folivora_sizer/folivora_sizer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "folivora_sizer-Swift.h"
#endif

@implementation FolivoraSizerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFolivoraSizerPlugin registerWithRegistrar:registrar];
}
@end
