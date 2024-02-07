//
//  BasicNavStartView.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

struct BasicNavRootView: View {
    @EnvironmentObject var navigationManager: BasicNavManager
    
    let tabItems = [BasicNavTabBarItem(title: "PageA", icon: "a.circle", root: .pageA),
                    BasicNavTabBarItem(title: "PageB", icon: "b.circle", root: .pageB),
                    BasicNavTabBarItem(title: "pageC", icon: "c.circle", root: .pageC)]
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            TabView(selection: $navigationManager.root) {
                ForEach(tabItems, id: \.title) { item in
                    Group {
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
                    .tag(item.root)
                }
            }
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
