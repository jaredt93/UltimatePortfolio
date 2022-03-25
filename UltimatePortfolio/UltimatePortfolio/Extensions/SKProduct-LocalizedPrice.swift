//
//  SKProduct-LocalizedPrice.swift
//  UltimatePortfolio
//
//  Created by Jared WIlliam Tamulynas on 3/23/22.
//

import StoreKit

extension SKProduct {
    var localizedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = priceLocale
        return formatter.string(from: price)!
    }
}
