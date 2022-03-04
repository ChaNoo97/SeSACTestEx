//
//  SeSACTestUITests.swift
//  SeSACTestUITests
//
//  Created by Hoo's MacBookPro on 2022/02/28.
//

import XCTest

class SeSACTestUITests: XCTestCase {
	//테스트 개수만큼 실행됨
    override func setUpWithError() throws {
		//필요한 요소들을 초기화 할때 사용
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

	//테스트 개수만큼 실행됨
    override func tearDownWithError() throws {
		//초기화를 해제하고 처음으로 돌려주는 부분
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
		
		let app = XCUIApplication()
		app.launch()
		app.buttons["First"].tap()
		app/*@START_MENU_TOKEN@*/.staticTexts["Scond"]/*[[".buttons[\"Scond\"].staticTexts[\"Scond\"]",".staticTexts[\"Scond\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
	func testViewControllerTransition() throws {
		let app = XCUIApplication()
		app.launch()
		app.buttons["First"].tap()
		app.staticTexts["Scond"].tap()
	}

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
