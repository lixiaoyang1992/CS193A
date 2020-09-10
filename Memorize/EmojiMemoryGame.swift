//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/8.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🍋", "🦨"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }

    var cards: Array< MemoryGame<String>.Card> {
        model.cards
    }

    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

