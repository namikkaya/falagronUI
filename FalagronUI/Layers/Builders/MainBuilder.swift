//
//  MainBuilder.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import SwiftUI

protocol MainBuilder {
    associatedtype contentContainer: View
    func build(coordinatorDelegate: ControllerToCoordinatorDelegate?) -> contentContainer
}

struct MainBuilderImpl: MainBuilder {
    typealias contentContainer = MainContentView
    func build(coordinatorDelegate: ControllerToCoordinatorDelegate?) -> some View {
        let service = WheatherServiceImpl()
        let uc = MainUseCaseImpl(service: service)
        let vm = MainViewModelImpl(coordinatorDelegate: coordinatorDelegate, useCase: uc)
        let vc = contentContainer(viewModel: vm)
        return vc
    }
}
