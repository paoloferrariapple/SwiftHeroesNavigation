//
//  BasicNavAppView.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

struct BasicNavAppView: View {
    @StateObject var navigationManager = BasicNavManager()
    
    var body: some View {
        BasicNavRootView()
            .environmentObject(navigationManager)
    }
}

#Preview {
    BasicNavAppView()
}
