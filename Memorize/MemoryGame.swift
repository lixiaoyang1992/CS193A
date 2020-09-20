//
//  MemoryGame.swift
//  Memorize
//
//  Created by lixiaoyang on 2020/9/8.
//  Copyright © 2020 lixiaoyang. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>

    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        let chosenIndex = index(of: card)
        if(chosenIndex >= 0) {
            cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
        }
    }

    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return -1
    }

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }

    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}

