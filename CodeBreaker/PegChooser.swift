//
//  PegChooser.swift
//  CodeBreaker
//
//  Created by Andrei Harnashevich on 21.01.26.
//

import SwiftUI

struct PegChooser: View {
    let choices: [Peg]
    let onChoose: ((Peg) -> Void)?
    
    var body: some View {
        HStack {
            ForEach(choices, id: \.self) { peg in
                Button {
                    onChoose?(peg)
                } label: {
                    PegView(peg: peg)
                }

            }
        }
    }
}

//#Preview {
//    PegChooser()
//}
