//
//  Routing.swift
//  MyVesre
//
//  Created by 이종선 on 12/7/24.
//

import SwiftUI

protocol Routing {
    associatedtype NavigationType: Route
    associatedtype SheetType: Route
    associatedtype FullScreenType: Route
    
    var path: NavigationPath { get set }
    var activeSheet: SheetType? { get set }
    var activeFullScreen: FullScreenType? { get set }
    
    func navigateTo(_ destination: NavigationType)
    func navigateBack()
    func popToRoot()
    
    func present(sheet: SheetType)
    func present(fullScreen: FullScreenType)
    func dismissSheet()
    func dismissFullScreen()
}
