//
//  AppDelegate.swift
//  noStoryBoard
//
//  Created by user164622 on 2/8/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Criando um UIWindow com as mesmas dimensioes da tela do iPhone.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //Criando um ViewController
        let viewController = UIViewController()
        
        //Atribuindo o viewController como sendo o ViewController principal da aplicacao
        window?.rootViewController = viewController
        
        //Exibindo o ViewController principal
        window?.makeKeyAndVisible()
        
        
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

