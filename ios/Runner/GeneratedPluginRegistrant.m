//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <cloud_firestore/CloudFirestorePlugin.h>
#import <firebase_core/FirebaseCorePlugin.h>
#import <google_maps_flutter/GoogleMapsPlugin.h>
#import <location/LocationPlugin.h>
#import <url_launcher/UrlLauncherPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FLTCloudFirestorePlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTCloudFirestorePlugin"]];
  [FLTFirebaseCorePlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTFirebaseCorePlugin"]];
  [FLTGoogleMapsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTGoogleMapsPlugin"]];
  [LocationPlugin registerWithRegistrar:[registry registrarForPlugin:@"LocationPlugin"]];
  [FLTUrlLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTUrlLauncherPlugin"]];
}

@end
