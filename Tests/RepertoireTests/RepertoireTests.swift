import XCTest
@testable import Repertoire

class RepertoireTests: XCTestCase {
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual(Repertoire().text, "Hello, World!")
  }
}

extension RepertoireTests {
  static var allTests = [
    ("testExample", testExample),
    ]
}
