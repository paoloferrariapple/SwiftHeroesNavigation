//
//  BasicNavDetail2.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

struct BasicNavDetail2: View {
    @EnvironmentObject var navigationManager: BasicNavManager
        
    var body: some View {
        VStack {
            Text("This is the detail 2")
            
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
            
            Button(action: {
                navigationManager.pop()
            }, label: {
                Text("Pop")
            })
            
            Button(action: {
                navigationManager.popToRoot()
            }, label: {
                Text("Pop to root")
            })
            
            Button(action: {
                navigationManager.popToRoot(.pageC)
            }, label: {
                Text("Pop to root C")
            })
        }
        .navigationTitle("Detail 2")
    }
}

#Preview {
    BasicNavDetail2()
}
