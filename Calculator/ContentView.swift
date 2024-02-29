//
//  ContentView.swift
//  Calculator
//
//  Created by MD. SHAYANUL HAQ SADI on 26/4/23.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["AC", "+/-", "%", "/"],
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(.black).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Text("43")
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self ) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .background(.orange)
                                .cornerRadius(40)
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
