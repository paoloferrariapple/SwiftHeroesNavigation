//
//  BasicNavStartView.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

/// Main view of the navigation structure, here i set up all the possibilities offered by navigation manager as roots or routes
struct BasicNavRootView: View {
    /// I access the navigation manager instance to connect all the views and logics
    @EnvironmentObject var navigationManager: BasicNavManager
    
    /// Example items for TabView composition
    let tabItems = [BasicNavTabBarItem(title: "PageA", icon: "a.circle", root: .pageA),
                    BasicNavTabBarItem(title: "PageB", icon: "b.circle", root: .pageB),
                    BasicNavTabBarItem(title: "pageC", icon: "c.circle", root: .pageC)]
    
    var body: some View {
        /// The main navigation stack has to be connected to the path managed by the navigation manager
        NavigationStack(path: $navigationManager.path) {
            /// In this simple example, the root becomes the selection of the TabView
            TabView(selection: $navigationManager.root) {
                ForEach(tabItems, id: \.title) { item in
                    Group {
                        /// The first real example of the utility of using enums to describe the possible roots
                        switch item.root {
                        case .pageA:
                            BasicNavPageA()
                        case .pageB:
                            BasicNavPageB()
                        case .pageC:
                            BasicNavPageC()
                        }
                    }
                    .tabItem {
                        Image(systemName: item.icon)
                        Text(item.title)
                    }
                    /// Conveniently since navigation enums are Hashable, we can use them to also tag the tab item
                    .tag(item.root)
                }
            }
            /// Pushed pages are defined in the navigation destination with the enum that describes what it's pushable
            .navigationDestination(for: BasicNavDetail.self) { detail in
                switch detail {
                case .detail1:
                    BasicNavDetail1()
                case .detail2:
                    BasicNavDetail2()
                }
            }
        }
    }
}

#Preview {
    BasicNavRootView()
        .environmentObject(BasicNavManager())
}
