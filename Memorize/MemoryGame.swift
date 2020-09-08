//
//  MemoryGame.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/8.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards:Array<Card>
    
    func choose(card:Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)-> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp:false,isMatched: false,content: content ))
            cards.append(Card(isFaceUp:false,isMatched: false,content: content ))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}

