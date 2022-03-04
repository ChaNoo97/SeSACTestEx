//
//  UserTextFieldTest.swift
//  SeSACTestUITests
//
//  Created by Hoo's MacBookPro on 2022/02/28.
//

import XCTest

class UserTextFieldTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
		//테스트 실패후 계속 테스트 할건지
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
		//밑에 메서드에서 launch 와 같음
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	
	//메서드를 최대한 구체적으로 작성하세용
    func testExample() throws {
		let app = XCUIApplication()
		app.launch()
		
		app.textFields["firstTextField"].tap()
		app.textFields["firstTextField"].typeText("안녕하세요")
		
		app.textFields["scondTextField"].tap()
		app.textFields["scondTextField"].typeText("Hoo입니다")
		
		app.textFields["ThirdTextField"].tap()
		app.textFields["ThirdTextField"].typeText("123123")
		
		app.buttons["first_Button"].tap()
//		app.staticTexts["first"].tap()
		
		XCTAssertEqual(app.staticTexts.element(matching: .any, identifier: "result_Label").label, "안녕하세요", "먼가 잘못된것 같다. 이런 메서드와 연관있을수 있음")
		//TableView 의 Cell 에도 identifier 을 심어서 해줄수 있음. cellforRowAt 에서 하면 됨
    }

}
