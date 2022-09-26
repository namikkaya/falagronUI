//
//  AppCoordinator.swift
//  FalagronUI
//
//  Created by namik kaya on 8.09.2022.
//

import Foundation
import SwiftUI

final class AppCoordinator: Coordinator {
    @EnvironmentObject var sceneDelegate: SceneDelegate
    
    // MARK: - Variables
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController?
    
    var window: UIWindow?
    var mainCoordinator: Coordinator?
    
    // MARK: - Constants
    required init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
        start()
    }

    // MARK: - Methods
    func start() {
        mainPage()
    }
    
    
    func detailPage() {
        
    }
 
}

extension AppCoordinator {
    func mainPage() {
        let main = MainCoordinator(navigationController: navigationController)
        childCoordinators.append(main)
        main.start()
//        let homeCoordinator = HomePageCoordinator(navigationController: navigationController)
//        homeCoordinator.coordinatorDelegate = self
//        homeCoordinator.start()
    }
}
