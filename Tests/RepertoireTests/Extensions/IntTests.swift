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
  
  func test_array_greatestCommonDivisor_oneElement() {
    XCTAssertEqual([1].greatestCommonDivisor, 1)
    XCTAssertEqual([2].greatestCommonDivisor, 2)
  }
  
  func test_array_leastCommonMultiplier_oneElement() {
    XCTAssertEqual([1].leastCommonMultiple, 1)
    XCTAssertEqual([2].leastCommonMultiple, 2)
  }
  
  func test_array_greatestCommonDivisor_zeroElements() {
    XCTAssertNil([].greatestCommonDivisor)
    XCTAssertNil([].greatestCommonDivisor)
  }
  
  func test_array_leastCommonMultiplier_zeroElements() {
    XCTAssertNil([].leastCommonMultiple)
    XCTAssertNil([].leastCommonMultiple)
  }
}

extension IntTests {
  static var allTests = [
    ("test_static_greatestCommonDivisor", test_static_greatestCommonDivisor),
    ("test_static_leastCommonMultiplier", test_static_leastCommonMultiplier),
    ("test_greatestCommonDivisor", test_greatestCommonDivisor),
    ("test_leastCommonMultiplier", test_leastCommonMultiplier),
    ("test_array_greatestCommonDivisor", test_array_greatestCommonDivisor),
    ("test_array_leastCommonMultiplier", test_array_leastCommonMultiplier),
    ("test_array_greatestCommonDivisor_oneElement", test_array_greatestCommonDivisor_oneElement),
    ("test_array_leastCommonMultiplier_oneElement", test_array_leastCommonMultiplier_oneElement),
    ("test_array_greatestCommonDivisor_zeroElements", test_array_greatestCommonDivisor_zeroElements),
    ("test_array_leastCommonMultiplier_zeroElements", test_array_leastCommonMultiplier_zeroElements)
    ]
}
