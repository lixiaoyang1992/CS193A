//
//  ContentView.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/7.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            ForEach(0..<4, content: {
                index in
                CardView(isFaceup: true)
            })
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceup: Bool
    
    var body: some View{
        ZStack(content: {
            if isFaceup{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}
