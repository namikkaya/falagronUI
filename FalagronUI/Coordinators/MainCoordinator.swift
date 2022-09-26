//
//  MainCoordinator.swift
//  FalagronUI
//
//  Created by namik kaya on 8.09.2022.
//

import SwiftUI

final class MainCoordinator: Coordinator {
    // MARK: - Variables
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController?

    // MARK: - Constants
    public required init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    // MARK: - Methods
    public func start() {
        startMainContent()
    }

    public func startMainContent() {
        let view = MainBuilderImpl().build(coordinatorDelegate: self)
        let controller = UIHostingController(rootView: view)
        navigationController?.setViewControllers([controller], animated: true)
        //navigationController?.navigationBar.isHidden = true
        //navigationController?.navigationBar.topItem!.title = "some title"
        navigationController?.navigationBar.topItem!.title = "some title"
    }
 
}

extension MainCoordinator: ControllerToCoordinatorDelegate {
    func viewEventHandler(event: ControllerToCoordinatorEventType) {
        switch event {
        case .gotoDetail:
            print("-------->>>> goto detail")
            let view = DetailPage()
            let controller = UIHostingController(rootView: view)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
