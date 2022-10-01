//
//  EmojiMemoryGameViewModel.swift
//  Memorize1
//
//  Created by Elizabeth Ponce on 10/1/22.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🍍","🫐","🍒","🍌","🍓","🍅","🍏","🍋","🍇","🍊","🍉","🍑","🥝","🥑","🌽","🥕", "🍎", "🍐","🍈","🥥","🥦","🥬","🌶","🥒"]

    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

}
