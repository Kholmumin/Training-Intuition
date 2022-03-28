//
//  AppDelegate.swift
//  Training Intuition
//
//  Created by Kholmumin Tursinboev on 10/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


     let myColor1:UIColor=UIColor(red: 163/255, green: 241/255, blue: 203/255, alpha: 1)

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        UINavigationBar.appearance().tintColor = UIColor.black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UINavigationBar.appearance().barTintColor = myColor1
        UINavigationBar.appearance().shadowImage=UIImage()
        UINavigationBar.appearance().isTranslucent=true
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        
        

        return true
    }


  


}

