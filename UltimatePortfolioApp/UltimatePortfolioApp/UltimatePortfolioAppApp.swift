//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Jared Tamulynas on 12/26/21.
//

import SwiftUI

@main
struct UltimatePortfolioAppApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
