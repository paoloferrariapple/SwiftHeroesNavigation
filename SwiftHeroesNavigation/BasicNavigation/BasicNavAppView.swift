//
//  BasicNavAppView.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

/// This should be considered the App struct, but i plan on adding different navigation examples in the same project.
/// Since i wanted a simple way to change what is built in the simulator from the App struct, i will create a secondary entry point for each of the exapmles
struct BasicNavAppView: View {
    /// Single instance of the navigation manager, in this example i used only swiftUI basic components, in future ones i'll use Swinject to make this better
    @StateObject var navigationManager = BasicNavManager()
    
    var body: some View {
        /// The manager instance is passed as environmentObject so that every view in the hierarchy has easy access to it
        BasicNavRootView()
            .environmentObject(navigationManager)
    }
}

#Preview {
    BasicNavAppView()
}
