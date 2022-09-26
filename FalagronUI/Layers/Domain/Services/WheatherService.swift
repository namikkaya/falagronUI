//
//  WheatherService.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import Foundation

protocol WheatherService {
    func fetchWeatherStatus(completion: @escaping WheatherServiceImpl.CompletionHandler)
}

struct WheatherServiceImpl: WheatherService {
    typealias CompletionHandler = (Result<[City], Error>) -> Void
}

extension WheatherServiceImpl {
    func fetchWeatherStatus(completion: @escaping CompletionHandler) {
        var returnData = [City]()
        for number in 0...50 {
            let city = City(index: number + 1, title: "Şehir adı \(number)")
            returnData.append(city)
        }
        completion(.success(returnData))
    }
}


struct City: Identifiable, Hashable {
    let id = UUID()
    let index: Int
    var title: String
}
