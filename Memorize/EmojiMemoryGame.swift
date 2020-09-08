//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/8.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String>=MemoryGame<String>(cards: [])
    
    var cards: Array< MemoryGame<String>.Card>{
        model.cards
    }
    
    func choos(card: MemoryGame<String>.Card)  {
        model.choose(card: card)
    }
}

