//
//  BasicNavDetail1.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import SwiftUI

struct BasicNavDetail1: View {
    @EnvironmentObject var navigationManager: BasicNavManager
        
    var body: some View {
        VStack {
            Text("This is the detail 1")
            
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
                navigationManager.popToRoot(.pageB)
            }, label: {
                Text("Pop to root B")
            })
        }
        .navigationTitle("Detail 1")
    }
}

#Preview {
    BasicNavDetail1()
}
