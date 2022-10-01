//
//  EmojiMemoryGameViewModel.swift
//  Memorize1
//
//  Created by Elizabeth Ponce on 10/1/22.
//

import SwiftUI


//build function outside of other function and they c/p into for functional in-line style

class EmojiMemoryGame {
    static let emojis = ["🍍","🫐","🍒","🍌","🍓","🍅","🍏","🍋","🍇","🍊","🍉","🍑","🥝","🥑","🌽","🥕", "🍎", "🍐","🍈","🥥","🥦","🥬","🌶","🥒"]
    //intermediary between model and view!
    //private means only VM can see this var!
    //we want to make our vars private so nothing can see them
    // private(set) says read only permissions
    //classes must be init
    
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
