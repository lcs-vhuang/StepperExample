//
//  MinusView.swift
//  StepperExample
//
//  Created by 黃翊喬 on 2026/4/20.
//

import SwiftUI

struct MultiplyView: View {
    
    // MARK: Stored properties
    @State var a: Int = 1
    @State var b: Int = 2
    @State var selectedOperation: Operation = .multiply
    
    enum Operation {
        case multiply
    }
    
    var result: Int {
        a * b
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Spacer()
                Text("\(a)")
                    .font(.system(size: 60))
            }
            
            Stepper("selected a", value: $a)
                .font(.system(size: 20))
            
            HStack {
                Text("x")
                    .font(.system(size: 60))
                
                Spacer()
                
                Text("\(b)")
                    .font(.system(size: 60))
            }
            
            Stepper("selected b", value: $b)                    .font(.system(size: 20))
            
            HStack {
                Spacer()
                Text("\(result)")
                    .font(.system(size: 60))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MultiplyView()
}
