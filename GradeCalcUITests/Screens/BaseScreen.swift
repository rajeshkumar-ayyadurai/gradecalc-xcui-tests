//
//  BaseScreen.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 03/04/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import XCTest

enum Timeout: TimeInterval {
    case minTimeout = 3.0
    case avgTimeout = 7.0
    case maxTimeout = 10.0
}

protocol PageValidator {
    func assertExpectedPageIsDisplayed()
}

class BaseScreen: PageValidator {
        
    var app: XCUIApplication
    
    init(_ app: XCUIApplication) {
        self.app = app
    }
    
    func assertExpectedPageIsDisplayed() {
        //
    }
    
    func swipeScreenUp() {
        app.swipeUp(velocity: .slow)
    }
    
    func swipeScreenDown() {
        app.swipeDown(velocity: .slow)
    }
    
    func longSwipeUp(repeatCount: Int) {
        // tba
    }
    
}
