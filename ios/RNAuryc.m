
#import "RNAuryc.h"
#import <AurycSDK/Auryc.h>

@implementation RNAuryc

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(initialize: (NSString *) apiKey siteId: (NSString *)siteId){
    [Auryc initialize:apiKey siteId:siteId development:YES];
}

RCT_EXPORT_METHOD(identify:(NSString *)identity){
    [[Auryc mainInstance] identify:identity];
}

RCT_EXPORT_METHOD(addUserProperties:(NSDictionary *)properties){
    [[Auryc mainInstance] addUserProperties:properties];
}

RCT_EXPORT_METHOD(addSessionProperties:(NSDictionary *)properties){
    [[Auryc mainInstance] addSessionProperties:properties];
}

RCT_EXPORT_METHOD(track: (NSString *) eventName properties:(NSDictionary *)properties){
    [[Auryc mainInstance] track:eventName properties:properties];
}

RCT_EXPORT_METHOD(markViewAsSensitiveInformation:(UIView *)view) {
    [[Auryc mainInstance] markViewAsSensitiveInformation:view];
}

RCT_EXPORT_METHOD(unMarkViewAsSensitiveInformation:(UIView *)view) {
    [[Auryc mainInstance] unMarkViewAsSensitiveInformation:view];
}

RCT_EXPORT_METHOD(markViewsAsSensitiveInformation:(NSArray<UIView *> *)views) {
    [[Auryc mainInstance] markViewsAsSensitiveInformation:views];
}

RCT_EXPORT_METHOD(unMarkViewsAsSensitiveInformation:(NSArray<UIView *> *)views) {
    [[Auryc mainInstance] unMarkViewsAsSensitiveInformation:views];
}

RCT_EXPORT_METHOD(markScreenAsSensitiveInformation) {
    [[Auryc mainInstance] markScreenAsSensitiveInformation];
}

RCT_EXPORT_METHOD(unMarkScreenAsSensitiveInformation) {
    [[Auryc mainInstance] unMarkScreenAsSensitiveInformation];
}
@end
  
