//
//  GameChooser.swift
//  CodeBreaker
//
//  Created by Andrei Harnashevich on 5.03.26.
//

import SwiftUI

struct GameChooser: View {
    // MARK: Data Owned by Me
    @State private var selection: CodeBreaker? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all)) {
            GameList(selection: $selection)
                .navigationTitle("Code Breaker")
        } detail: {
            if let selection {
                CodeBreakerView(game: selection)
                    .navigationTitle(selection.name)
                    .navigationBarTitleDisplayMode(.inline)
            } else {
                Text("Choose a game!")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    GameChooser()
}
