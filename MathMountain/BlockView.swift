//
//  BlockView.swift
//  MathMountain
//
//  Created by Tom Phillips on 2/3/23.
//

import SwiftUI

struct BlockView: View {
    @State private var isDestroyed = false
    let number: Int
    let answer: Int
    
    var body: some View {
        Text("\(number)")
            .font(.title)
            .lineLimit(1)
            .padding()
            .background(.gray)
            .cornerRadius(8)
            .frame(minWidth: UIScreen.main.bounds.width * 0.125)
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(number: Int.random(in: 0...9), answer: 8)
    }
}
