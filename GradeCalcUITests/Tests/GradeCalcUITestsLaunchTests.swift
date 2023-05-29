//
//  GradeCalcUITestsLaunchTests.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 30/03/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import XCTest

class GradeCalcUILayoutTests: RegressionTest {

    func test_1_shouldBeAbleSeeEmptyHomescreen() {
        homeScreen.verifyHomeScreenWithNoSemesterAdded()
    }
    
}
