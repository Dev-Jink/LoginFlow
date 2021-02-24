//
//  SceneDelegate.swift
//  LoginFlow
//
//  Created by MyeongJin on 2021/02/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }


    func applicationWillResignActive(_ application: UIApplication) {
        print("애플리케이션이 비활성화 될 예정")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("애플리케이션이 백그라운드로 진입함")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("애플리케이션이 백그라운드에서 벗어날 예정")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("애플리케이션이 활성화 됨")
    }
}

