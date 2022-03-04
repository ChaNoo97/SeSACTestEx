//
//  SeSACTestTests.swift
//  SeSACTestTests
//
//  Created by Hoo's MacBookPro on 2022/02/28.
//

import XCTest
//모듈에 접근할수 있게 해줌
// 테스트 모듈 - 코드모듈 다다름
// 인터널 상태에서 모듈끼리만 가능한데
// 현재 viewcontroller 은 인터널 상태라 원래 가져오는게 불가능 그래서 public 을 써주면 가져올수 있지만 현재 @testable 를 통해서 테스트 할때만 가져다쓸수 있게 해줌
@testable import SeSACTest

class SeSACTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testExample() throws {
//
//		// 이렇게 가져오면 옵셔널 에러
////		let vc = ViewController()
//
//		// 여기까지만 해도 옵셔널 에러
//		let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
//
//		//로드뷰 해줘야 비로소 노 에러
//		vc.loadViewIfNeeded()
//
//		vc.firstTextField.text = "안녕하세요"
//
//		let result = vc.calculateTextFieldTextCount()
//
//		XCTAssertEqual(result, 5)
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
