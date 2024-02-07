//
//  BasicNavManager.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import Foundation
import SwiftUI

final class BasicNavManager: ObservableObject {
    /// I prefer to keep the root separated from the path to make it simpler but it's completely up to implementation and what is best for the project
    @Published var root: BasicNavRoots
    
    /// The navigation path that decides what has to be pushed and keeps the history
    @Published var path: NavigationPath
    
    /// This initializer allows the creation of an empty manager or the loading of a deeplink / a previous navigation
    init(root: BasicNavRoots = .pageA, path: NavigationPath = NavigationPath()) {
        self.root = root
        self.path = path
    }
    
    /// Push a new page, using the enum that describes pushable pages
    public func push(_ element: BasicNavDetail) {
        path.append(element)
    }
    
    /// Removes the last page or the last n pages
    /// - describe the number to pop the last n pages
    /// - leave empty to pop the last page
    public func pop(_ elements: Int = 1) {
        path.removeLast(elements)
    }
    
    /// Clears the navigation path, returning the stack to the root view
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    /// Like popToRoot(), but gives the option to change root in clearing the navigation stack
    public func popToRoot(_ root: BasicNavRoots) {
        self.root = root
        popToRoot()
    }
}
