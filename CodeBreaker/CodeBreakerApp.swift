//
//  CodeBreakerApp.swift
//  CodeBreaker
//
//  Created by Andrei Harnashevich on 6.01.26.
//

import SwiftUI
import SwiftData

@main
struct CodeBreakerApp: App {
    var body: some Scene {
        WindowGroup {
            GameChooser()
                .modelContainer(for: CodeBreaker.self)
        }
    }
}
