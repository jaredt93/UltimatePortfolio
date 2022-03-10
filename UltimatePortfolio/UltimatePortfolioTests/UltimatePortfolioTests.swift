//
//  UltimatePortfolioTests.swift
//  UltimatePortfolioTests
//
//  Created by Jared WIlliam Tamulynas on 3/10/22.
//

import CoreData
import XCTest
@testable import UltimatePortfolio

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!

    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }

}
