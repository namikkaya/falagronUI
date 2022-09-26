//
//  CoordinatorCommon.swift
//  FalagronUI
//
//  Created by namik kaya on 23.09.2022.
//

import Foundation

protocol ControllerToCoordinatorDelegate:AnyObject {
    func viewEventHandler(event: ControllerToCoordinatorEventType)
}

enum RouterFlow {
    case splash, main(flow: [MainFlow])
}

enum MainFlow {
    case home
}

enum ControllerToCoordinatorEventType {
    case gotoDetail
}
