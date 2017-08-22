import XCTest
@testable import Repertoire

class IntTests: XCTestCase {
  func test_static_greatestCommonDivisor() {
    XCTAssertEqual(Int.greatestCommonDivisor(3, 5), 1)
    XCTAssertEqual(Int.greatestCommonDivisor(12, 60), 12)
    XCTAssertEqual(Int.greatestCommonDivisor(12, 90), 6)
  }
  
  func test_static_leastCommonMultiplier() {
    XCTAssertEqual(Int.leastCommonMultiple(12, 80), 240)
    XCTAssertEqual(Int.leastCommonMultiple(3, 5), 15)
  }
  
  func test_greatestCommonDivisor() {
    XCTAssertEqual(3.greatestCommonDivisor(5), 1)
    XCTAssertEqual(12.greatestCommonDivisor(60), 12)
    XCTAssertEqual(12.greatestCommonDivisor(90), 6)
  }
  
  func test_leastCommonMultiplier() {
    XCTAssertEqual(12.leastCommonMultiple(80), 240)
    XCTAssertEqual(3.leastCommonMultiple(5), 15)
  }
  
  func test_array_greatestCommonDivisor() {
    XCTAssertEqual([3, 5].greatestCommonDivisor, 1)
    XCTAssertEqual([12, 60].greatestCommonDivisor, 12)
    XCTAssertEqual([12, 90].greatestCommonDivisor, 6)
  }
  
  func test_array_leastCommonMultiplier() {
    XCTAssertEqual([12, 80].leastCommonMultiple, 240)
    XCTAssertEqual([3, 5].leastCommonMultiple, 15)
  }
  
  func test_array_greatestCommonDivisor_lessThanTwo() {
    XCTAssertNil([1].greatestCommonDivisor)
    XCTAssertNil([2].greatestCommonDivisor)
  }
  
  func test_array_leastCommonMultiplier_lessThanTwo() {
    XCTAssertNil([1].leastCommonMultiple)
    XCTAssertNil([2].leastCommonMultiple)
  }
}
