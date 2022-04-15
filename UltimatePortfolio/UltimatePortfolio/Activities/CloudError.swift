//
//  CloudError.swift
//  UltimatePortfolio
//
//  Created by Jared WIlliam Tamulynas on 4/12/22.
//

import Foundation
import SwiftUI

struct CloudError: Identifiable, ExpressibleByStringInterpolation {
    var id: String { message }
    var message: String

    init(stringLiteral value: String) {
        self.message = value
    }

    var localizedMessage: LocalizedStringKey {
        LocalizedStringKey(message)
    }
}
