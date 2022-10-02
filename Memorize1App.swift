//
//  Memorize1App.swift
//  Memorize1
//
//  Created by Elizabeth Ponce on 9/27/22.
//

import SwiftUI

@main
struct Memorize1App: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
