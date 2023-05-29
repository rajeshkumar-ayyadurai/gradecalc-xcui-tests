//
//  GradeCalcUITests.swift
//  GradeCalcUITests
//
//  Created by Rajeshkumar Ayyadurai on 30/03/23.
//  Copyright © 2023 Marlon Lückert. All rights reserved.
//

import XCTest

class GradeCalcUITests: BaseTest {
    
    func test_1_smokeTest_shouldBeAbleToAddNewSemester() {
        let subjectName: String = "Maths7"
        let semesterName: String = "Semester7"
        
        homeScreen.tapOnAddButton()
                    .createSemester(name: semesterName)
                    .typeSubjectNameInTextField(name: subjectName)
                    .tapOnSaveButton()
                    .swipeUpUntilSemesterNameIsVisible(title: semesterName)
                    .verifyRecentlyAddedTitleIsDisplayed(title: semesterName)
    }
    
    
    func test_2_smokeTest_shouldBeAbleToAddNewSubjectUnderExistingSemester() {
        let subjectName: String = "Maths8"
        let semesterName: String = "Semester7"
        
        homeScreen.tapOnAddButton()
                    .assertExistingSemesterIsSelected(name: semesterName)
                    .typeSubjectNameInTextField(name: subjectName)
                    .tapOnSaveButton()
                    .swipeUpUntilSemesterNameIsVisible(title: semesterName)
                    .assertNewlyAddedSubjectIsVisible(subjectName: subjectName)
    }
}
