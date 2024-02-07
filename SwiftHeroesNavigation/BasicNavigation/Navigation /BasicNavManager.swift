//
//  BasicNavManager.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import Foundation
import SwiftUI

final class BasicNavManager: ObservableObject {
    @Published var root: BasicNavRoots
    @Published var path: NavigationPath
    
    init(root: BasicNavRoots = .pageA, path: NavigationPath = NavigationPath()) {
        self.root = root
        self.path = path
    }
    
    public func push(_ element: BasicNavDetail) {
        path.append(element)
    }
    
    public func pop(_ elements: Int = 1) {
        path.removeLast(elements)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func popToRoot(_ root: BasicNavRoots) {
        self.root = root
        popToRoot()
    }
}
