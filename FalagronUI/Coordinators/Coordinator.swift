//
//  Coordinator.swift
//  FalagronUI
//
//  Created by namik kaya on 8.09.2022.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    init(navigationController: UINavigationController?)
    var childCoordinators:[Coordinator] { set get }
    func addChild(child: Coordinator)
    func removeChild(child: Coordinator)
}


extension Coordinator {
    func addChild(child: Coordinator){}
    func removeChild(child: Coordinator){}
}
