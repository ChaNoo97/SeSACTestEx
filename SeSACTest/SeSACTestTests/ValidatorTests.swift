//
//  ValidatorTests.swift
//  SeSACTestTests
//
//  Created by Hoo's MacBookPro on 2022/03/02.
//

import XCTest
@testable import SeSACTest

//Validator 클래스의 메서드를 테스트 할겁니다
class ValidatorTests: XCTestCase {
	
	var sut: Validator!

    override func setUpWithError() throws {
		try super.setUpWithError()
		
        sut = Validator()
    }

    override func tearDownWithError() throws {
        sut = nil
		try super.tearDownWithError()
    }

    func testValidator_validID_ReturnTrue() throws {
		//Given
		let user = User(email: "Hoo@hoo.com", password: "123456", check: "123455")
		//when
		let valid = sut.isValidId(id: user.email)
		//Then
		XCTAssertTrue(valid, "@없거나 6글자 미만임")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
