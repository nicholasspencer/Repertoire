import XCTest
@testable import Repertoire

class StringTests: XCTestCase {
  func test_ints() {
    XCTAssertEqual("1 2 3 4".ints, [1, 2, 3, 4])
  }
}

extension StringTests {
  static var allTests = [
    ("test_intComponents", ints),
    ]
}
