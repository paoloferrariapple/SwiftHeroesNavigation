//
//  BasicNavPageA.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

struct BasicNavPageA: View {
    @EnvironmentObject var navigationManager: BasicNavManager
    
    var body: some View {
        VStack {
            Text("This is page A")
            
            Button(action: {
                navigationManager.push(BasicNavDetail.detail1)
            }, label: {
                Text("Push Detail 1")
            })
            
            Button(action: {
                navigationManager.push(BasicNavDetail.detail2)
            }, label: {
                Text("Push Detail 2")
            })
        }
    }
}

#Preview {
    BasicNavPageA()
        .environmentObject(BasicNavManager())
}
