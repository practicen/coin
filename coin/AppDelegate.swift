//
//  AppDelegate.swift
//  coin
//
//  Created by 丸井優希 on 2023/04/09.
//

import UIKit
import GoogleMobileAds
import NCMB


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let applicationkey       = "db20655d92dc65ba78362b348a224579b01872fcd9bfb7152d2c83833706f7cc"
    let clientkey            = "9f10912c1c699d85e2bc282712e1dde0f9ce2939fed02d64a5afaa5c7477d2e2"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        NCMB.initialize(applicationKey: applicationkey, clientKey: clientkey)
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

