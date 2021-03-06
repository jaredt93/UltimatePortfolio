//
//  Binding-OnChange.swift
//  UltimatePortfolio
//
//  Created by Jared WIlliam Tamulynas on 2/17/22.
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
