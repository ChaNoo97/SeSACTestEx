//
//  loginViewTest.swift
//  SeSACTestTests
//
//  Created by Hoo's MacBookPro on 2022/03/02.
//

import XCTest
@testable import SeSACTest

class loginViewTest: XCTestCase {
	
	//system under test
	var sut: TestViewController!

    override func setUpWithError() throws {
		//뷰에 의존하는 방법임
		sut = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestViewController") as! TestViewController)
		sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
	//BDD 행위 주도 개발(Behavior Driven Development): Given, When, Then
//    func testLoginViewController_ValidID_ReturnTrue() throws {
//		//Given, Arrange
//		sut.idTextField.text = "hoo@hoo.com"
//		//When, Act
//		let valid = sut.isValidId()
//		//Then, Assert
//		XCTAssertTrue(valid, "실패했다면 @ 없거나 6글자 미만 이라서 안될수 있음")
//	}
//	
//	func testLoginViewController_ValidPassword_ResultFalse() throws {
//		
//		sut.passwordTextField.text = "1234"
//		
//		let valid = sut.isValidPassword()
//		
//		XCTAssertFalse(valid, "패스워드 6자리 이상 10자리 미만임.패스워드 로직 확인")
//	}
//	
//	func testLoginViewController_idTextfield_ReturnNil() throws {
//		//nil 에 대한 값도 테스트 가능하다
//		
//		sut.idTextField = nil
//		
//		let value = sut.idTextField
//		
//		XCTAssertNil(value)
//	}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
