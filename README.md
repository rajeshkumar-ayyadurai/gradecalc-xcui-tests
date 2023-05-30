# XCUITest-Mobile-App-Automation
This project contains automated tests for Grade Calculator application which includes functionalities like add semester names, add subject names and calculating CGPA based on the given score.

Automation framework is built with the following tech components, such as
1. XCUITest as a test framework
2. Fastlane for test execution and reporting
3. Fluent Page Object Model for designing the structure
4. Uses Xcode Test Plan for group based test execution

Post successful clone of the source code, follow the below steps to run the automation tests:
- Navigate into the root directory (i.e. xcuitest-mobile-app-automation >)
- Run command to start the test execution by its Action name (i.e. xcuitests)

`fastlane xcuitests`

Command to run the the tests by Test Plan name

`fastlane xcuitests testplan:"RegressionTests"`

Feel free to checkout the blog post where I have documented the knowledge and insights gained throughout this journey [here](https://medium.com/@rajeshkumar-ayyadurai/harnessing-xcui-test-and-fastlane-for-building-ios-automation-framework-da47f5426aab).


