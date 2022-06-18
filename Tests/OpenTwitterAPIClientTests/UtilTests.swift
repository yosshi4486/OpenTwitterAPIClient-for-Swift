//
//  UtilTests.swift
//  
//
//  Created by yosshi4486 on 2022/06/18.
//

import XCTest
@testable import OpenTwitterAPIClient

final class UtilTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSetToken() {
        let token = "abcdefg123456"
        OpenTwitterAPIClientAPI.setToken(token)

        let expectedHeader = ["Authorization": "Bearer abcdefg123456"]

        XCTAssertEqual(OpenTwitterAPIClientAPI.customHeaders, expectedHeader)

        // Check the effect.
        XCTAssertEqual(TweetsAPI.findTweetByIdWithRequestBuilder(id: "my_id").headers, expectedHeader)
    }

}
