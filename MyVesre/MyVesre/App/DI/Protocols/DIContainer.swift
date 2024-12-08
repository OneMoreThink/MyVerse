//
//  DIContainer.swift
//  MyVesre
//
//  Created by 이종선 on 12/7/24.
//

import Foundation

protocol DIContainer {
    func makeViewModel<T>() -> T
    func makeUseCase<T>() -> T
    func makeRepository<T>() -> T
}
