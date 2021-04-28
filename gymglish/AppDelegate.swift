//
//  AppDelegate.swift
//  gymglish
//
//  Created by Antoine THIEL on 28/04/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let firstController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        window.rootViewController = UINavigationController(rootViewController: firstController)
        window.makeKeyAndVisible()
        self.window = window
        
        
        return true
    }
}

