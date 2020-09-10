//
//  ContentView.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/7.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {

        return HStack(content: {
            ForEach(viewModel.cards) {
                card in CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        ZStack(content: {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}
