//
//  miniPostTests.swift
//  miniPostTests
//
//  Created by Robert Lang on 21/3/24.
//

import XCTest
@testable import miniPost

final class miniPostTests: XCTestCase {
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testUserHash() throws {
        let user = User(
            id: 1,
            name: "John Doe",
            username: "username",
            email: "email",
            address: .init(
                street: "street",
                suite: "suite",
                city: "city",
                zipcode: "zipcode"
            ),
            phone: "123-456",
            website: "test.local",
            company: .init(
                name: "name",
                catchPhrase: "catchPhrase",
                bs: "bs"
            )
        )
        XCTAssertEqual(user.userHash(), "JoDo579test")
    }
}
