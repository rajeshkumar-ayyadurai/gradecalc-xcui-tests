//
//  HomeScreen.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 31/03/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import XCTest

class HomeScreen: BaseScreen {
    
    lazy var addButton = app.buttons["Add"]
    lazy var homeScreenValidationText = app.collectionViews.staticTexts["Your GPA"]
    lazy var homeScreenWithNoSemesterText = app.staticTexts.containing(NSPredicate(format: "label CONTAINS[c] %@", "Nothing to see here yet."))
    
    override init(_ app: XCUIApplication) {
        super.init(app)
        assertExpectedPageIsDisplayed()
    }
    
    override func assertExpectedPageIsDisplayed() {
        XCTAssertTrue(homeScreenValidationText.waitForExistence(timeout: Timeout.minTimeout.rawValue))
    }
    
    func tapOnAddButton() -> AddNewSubjectScreen {
        addButton.tap()
        return AddNewSubjectScreen(app)
    }
    
    func isRecentlyAddedSemesterVisible(title: String) -> Bool  {
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", title)
        return app.buttons.containing(predicate).element.exists
    }
    
    func verifyRecentlyAddedTitleIsDisplayed(title: String) {
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", title)
        XCTAssertTrue(app.buttons.containing(predicate).element.exists)
    }
    
    func swipeUpUntilSemesterNameIsVisible(title: String, repeatCount: Int = 3) -> HomeScreen {
        var count = 0
        while count < repeatCount && !(isRecentlyAddedSemesterVisible(title: title)) {
            swipeScreenUp()
            count += 1
        }
        return self
    }
    
    func verifyHomeScreenWithNoSemesterAdded(){
        XCTAssertTrue(homeScreenWithNoSemesterText.element.exists)
    }
    
    func assertNewlyAddedSubjectIsVisible(subjectName: String) {
        XCTAssertTrue(app.collectionViews.staticTexts[subjectName].exists)
    }
}
