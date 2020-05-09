// ToastViewBridge.m

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ToastView, NSObject)
RCT_EXTERN_METHOD(showToast: (NSString *) message)
@end