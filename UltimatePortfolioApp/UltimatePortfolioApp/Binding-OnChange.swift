//
//  Binding-OnChange.swift
//  UltimatePortfolioApp
//
//  Created by Jared Tamulynas on 1/3/22.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
