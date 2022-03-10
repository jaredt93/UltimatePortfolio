//
//  AssetTests.swift
//  UltimatePortfolioTests
//
//  Created by Jared WIlliam Tamulynas on 3/10/22.
//

import XCTest
@testable import UltimatePortfolio

class AssetTests: XCTestCase {
    func testColorsExist() {
        for color in Project.colors {
            XCTAssertNotNil(UIColor(named: color), "Failed to load color '\(color)' from asset catalog.")
        }
    }

    func testJSONLoadsCorrectly() {
        XCTAssertTrue(Award.allAwards.isEmpty == false, "Failed to load awards from JSON.")
    }
}
