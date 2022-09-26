//
//  SceneDelegate.swift
//  FalagronUI
//
//  Created by namik kaya on 8.09.2022.
//

import SwiftUI
class SceneDelegate: NSObject, ObservableObject, UIWindowSceneDelegate {
    var window: UIWindow?
    var coordinator: Coordinator?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        self.window = windowScene.keyWindow
        
        let navigationController = UINavigationController()
        coordinator = AppCoordinator(navigationController: navigationController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
