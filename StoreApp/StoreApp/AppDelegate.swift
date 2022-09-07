//
//  AppDelegate.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 05.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = BaseTabBarController()
        return true
    }




}

