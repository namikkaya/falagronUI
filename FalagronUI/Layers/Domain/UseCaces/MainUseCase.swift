//
//  MainUseCase.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import Foundation

protocol MainUseCase {
    func fetchData() -> String?
    func fetchWeatherStatus(completion: @escaping WheatherServiceImpl.CompletionHandler)
}

struct MainUseCaseImpl: MainUseCase {
    private let service: WheatherService
    init(service: WheatherService) {
        self.service = service
    }
    
    func fetchWeatherStatus(completion: @escaping WheatherServiceImpl.CompletionHandler) {
        service.fetchWeatherStatus(completion: completion)
    }
    
    func fetchData() -> String? {
        return "Hele hele hele"
    }
}
