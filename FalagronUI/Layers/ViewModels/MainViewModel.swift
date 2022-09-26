//
//  MainViewModel.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import Foundation

protocol MainViewModel: ObservableObject {
    var listData: [City]? { get set }
    func fetchList() async
    func start() async
    func gotoDetail()
}

final class MainViewModelImpl: MainViewModel {
    typealias UseCaseType = MainUseCase
    private let useCase: UseCaseType
    
    @Published var listData: [City]? = []
    
    private weak var coordinatorDelegate: ControllerToCoordinatorDelegate?
    
    init(coordinatorDelegate: ControllerToCoordinatorDelegate?, useCase: UseCaseType) {
        self.useCase = useCase
        self.coordinatorDelegate = coordinatorDelegate
    }
    
    func start() async {
        await fetchList()
    }
    
    func fetchList() async {
        useCase.fetchWeatherStatus { [weak self] result in
            switch result {
            case .success(let cities):
                self?.listData?.append(contentsOf: cities)
            case .failure:
                break
            }
        }
    }
    
    func gotoDetail() {
        self.coordinatorDelegate?.viewEventHandler(event: .gotoDetail)
    }
    
}
