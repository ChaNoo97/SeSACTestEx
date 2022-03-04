//
//  APIServiceTests.swift
//  SeSACTestTests
//
//  Created by Hoo's MacBookPro on 2022/03/03.
//

import XCTest
@testable import SeSACTest

class APIServiceTests: XCTestCase {

	var sut: APIService!
	
    override func setUpWithError() throws {
		try super.setUpWithError()
		sut = APIService()
    }

    override func tearDownWithError() throws {
        sut = nil
		try super.tearDownWithError()
    }

	//CallRequest > number 1~45
    func testExample() throws {
		//unitTest는 동기적으로 진행되게 되어있다
		sut.number = 100 //테스트의 기댓값은 실패인데 성공함..
		print("==\(sut.number)==")
		
		//클로저 구문이 실행되게 해줘야함
		sut.callRequest { number in
			print("클로져 구문")
			XCTAssertLessThanOrEqual(self.sut.number, 45)
			XCTAssertGreaterThanOrEqual(self.sut.number, 1)
		}
		
		print("============")
		
    }
	
	// expactation, fulfill, wait 3개로 비동기 테스트를 만들어 보자
	// 네트워크: 아이폰 네트워크 응답X, API 서버 점검, API 지연
	// => 테스트 더블: 테스트 코드와 상호작용을 할 수 있는 가짜 객체 생성(ex.스턴트맨)
	// => Dummy, Stub, Fake, Spy, Mock => 테스트가 가능한 객체를 만듬
	// => 속도 개선, 테스트 대상 격리, 예측 불가능한 상황X
	func testExample2() throws {
		//로또 데이터 받아올때까지 기다려
		let promise = expectation(description: "Wating Lotto Number, completion Handler Invoked")
		//테스트 기댓값: 실패
		sut.number = 30
		sut.callRequest { number in
			print("클로져 구문")
			XCTAssertLessThanOrEqual(self.sut.number, 45)
			XCTAssertGreaterThanOrEqual(self.sut.number, 1)
			//나 비동기 작업 끝났어!
			promise.fulfill() // expectation으로 정의한 테스트 조건을 충족한 시점에 호출
		}
		//최대 10 초까지!
		wait(for: [promise], timeout: 5) //timeout: 5초가 지나면 실패 간주
	}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
