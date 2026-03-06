//
//  GameSummary.swift
//  CodeBreaker
//
//  Created by Andrei Harnashevich on 5.03.26.
//

import SwiftUI

struct GameSummary: View {
    let game: CodeBreaker
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(game.name).font(.title)
            PegChooser(choices: game.pegChoices)
                .frame(maxHeight: 50)
            Text("^[\(game.attempts.count) attempt](inflect: true)")
        }
    }
}

#Preview {
    List {
        GameSummary(game: CodeBreaker(name: "Preview", pegChoices: [.red,.cyan,.yellow]))
    }
    List {
        GameSummary(game: CodeBreaker(name: "Preview", pegChoices: [.red,.cyan,.yellow]))
    }
    .listStyle(.plain)
}
