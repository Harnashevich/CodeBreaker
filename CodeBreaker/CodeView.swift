//
//  CodeView.swift
//  CodeBreaker
//
//  Created by Andrei Harnashevich on 21.01.26.
//

import SwiftUI

struct CodeView: View {
    
    let code: Code
    
    @Binding var selection: Int
    
    var body: some View {
        ForEach(code.pegs.indices, id: \.self) { index in
            PegView(peg: code.pegs[index])
                .padding(Selection.border)
                .background {
                    if selection == index, code.kind == .guess {
                        Selection.shape
                            .foregroundStyle(Selection.color)
                    }
                }
                .overlay {
                    Selection.shape.foregroundStyle(code.isHidden ? Color.gray : .clear)
                }
                .onTapGesture {
                    if code.kind == .guess {
                        selection = index
                    }
                }
        }
    }
    
    struct Selection {
        static let border: CGFloat = 5
        static let corderRadius: CGFloat = 10
        static let color = Color.gray(0.85)
        static let shape = RoundedRectangle(cornerRadius: Selection.corderRadius)
    }
}

//#Preview {
//    CodeView()
//}
