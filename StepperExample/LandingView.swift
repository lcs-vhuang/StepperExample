//
//  LandingView.swift
//  StepperExample
//
//  Created by 黃翊喬 on 2026/4/20.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(2)) {
            
            SumView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Plus")
                }
                .tag(1)
            
            MinusView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Minus")
                }
                .tag(2)
            
            MultiplyView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiply")
                }
                .tag(3)

            DivideView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Divide")
                }
                .tag(4)
        }
        .tint(.purple)
    }
}

#Preview {
    LandingView()
}

