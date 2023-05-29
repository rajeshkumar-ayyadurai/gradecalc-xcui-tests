//
//  AddNewSubjectScreen.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 31/03/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import Foundation
import XCTest

class AddNewSubjectScreen: BaseScreen {
    
    lazy var newSubjectText = app.navigationBars["New subject"]
    lazy var saveButton = app.collectionViews.buttons["Save"]
    lazy var titleTextField = app.collectionViews.textFields["Title"]
    lazy var createSemesterButton = app.collectionViews.buttons["Create semester"]
    lazy var semesterNameTextField = app.collectionViews.textFields["Semester"]
    
    override init(_ app: XCUIApplication) {
        super.init(app)
        assertExpectedPageIsDisplayed()
    }
    
    internal override func assertExpectedPageIsDisplayed() {
        XCTAssertTrue(newSubjectText.waitForExistence(timeout: Timeout.maxTimeout.rawValue))
    }
    
    func tapOnSaveButton() -> HomeScreen {
        saveButton.tap()
        return HomeScreen(app)
    }
    
    func typeSubjectNameInTextField(name: String) -> AddNewSubjectScreen {
        titleTextField.tap()
        titleTextField.typeText(name)
        return self
    }
    
    func createSemester(name: String) -> AddNewSubjectScreen {
        if !(createSemesterButton.isSelected) {
            createSemesterButton.tap()
        }
        semesterNameTextField.tap()
        semesterNameTextField.typeText(name)
        return self
    }
    
    func assertExistingSemesterIsSelected(name: String) -> AddNewSubjectScreen {
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", name)
        XCTAssertFalse(createSemesterButton.isSelected)
        XCTAssertTrue(app.buttons.containing(predicate).element.exists)
        return self
    }
    
}
