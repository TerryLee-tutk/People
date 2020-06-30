import XCTest
@testable import People

final class PeopleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(People().text, "Hello, World!")
        XCTAssertEqual(People(name: "", gender: Gender.male, age: 0).text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
