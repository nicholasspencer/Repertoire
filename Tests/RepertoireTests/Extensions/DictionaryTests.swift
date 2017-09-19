import XCTest
@testable import Repertoire

class DictionaryTests: XCTestCase {
  
  private enum TestCodingKeys: String, CodingKey {
    case testOne
    case testTwo
    case testThree = "test3"
    case testQuatro
  }
  
  func test_codingKeySubscript() {
    let subject = [
      "testOne": "one",
      "testTwo": "two",
      "test3": "three",
      ]
    
    XCTAssertEqual(subject[TestCodingKeys.testOne], "one")
    XCTAssertEqual(subject[TestCodingKeys.testTwo], "two")
    XCTAssertEqual(subject[TestCodingKeys.testThree], "three")
    XCTAssertNil(subject[TestCodingKeys.testQuatro])
  }
  
}

extension DictionaryTests {
  static var allTests = [
    ("test_codingKeySubscript", test_codingKeySubscript),
    ]
}

