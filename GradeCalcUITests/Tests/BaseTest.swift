//
//  BaseTest.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 31/03/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import Foundation
import XCTest

enum TestCaseType: String {
    case regression = "Regression Tests"
    case smoke = "Smoke Tests"
    case toBeMapped = "To be mapped"
}

class BaseTest: XCTestCase {
    
    var launchAppAutomatically: Bool { true }
    
    let app = XCUIApplication()
    
    lazy var homeScreen = HomeScreen(app)
    lazy var newSubjectScreen = AddNewSubjectScreen(app)
    
    var suiteType: TestCaseType {.toBeMapped}
    
    override func setUp() {
        if launchAppAutomatically {
            app.launch()
        }
    }
}
