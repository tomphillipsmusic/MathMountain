//
//  ContentView.swift
//  MathMountain
//
//  Created by Tom Phillips on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    let answer = 8
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
            
            VStack {
                Spacer()
                ForEach(1..<6) { number in
                    
                    HStack {
                        ForEach(0..<number) { _ in
                            BlockView(number: Int.random(in: 0...9), answer: answer)
                        }
                    }
                }
                
                Spacer()
                
                Text("3 + 5")
                    .lineLimit(1)
                    .padding()
                    .background(.gray)
                    .cornerRadius(8)
            }
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
