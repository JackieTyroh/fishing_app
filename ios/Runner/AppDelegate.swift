import UIKit
import Flutter
import "GoogleMaps/GoogleMaps.h"

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    [GMSServices provideAPIKey: @"AIzaSyB98B37EoySzLpyLJQkH6J5GaRi6HxuLA4"];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
  }
}
