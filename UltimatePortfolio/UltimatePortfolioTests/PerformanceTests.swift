//
//  PerformanceTests.swift
//  UltimatePortfolioTests
//
//  Created by Jared WIlliam Tamulynas on 3/13/22.
//

import XCTest
@testable import UltimatePortfolio

class PerformanceTests: BaseTestCase {
    func testAwardCalculationPerformance() throws {
        for _ in 1...100 {
            try dataController.createSampleData()
        }

        let awards = Array(repeating: Award.allAwards, count: 25).joined()
        XCTAssertEqual(awards.count, 500, "This checks the awards count is constant. Change this if you add awards.")

        measure {
            _ = awards.filter(dataController.hasEarned).count
        }
    }
}
