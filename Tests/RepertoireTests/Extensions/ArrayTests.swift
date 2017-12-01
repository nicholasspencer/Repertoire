//
//  ArrayTests.swift
//  RepertoireTests
//
//  Created by Nicholas Spencer on 12/1/17.
//

import XCTest

@testable import Repertoire

class ArrayTests: XCTestCase {
  func test_intersection() {
    var one: Array<Int> = Array(0..<3000)
    Array(1000..<2000).forEach { one.append($0) }

    var two: Array<Int> = Array(2000..<4000)
    Array(3000..<4000).forEach { two.append($0) }

    XCTAssertEqual(one.intersection(two).count, 1000)
  }

  func test_intersection_measurement() {
    var one: Array<Int> = Array()
    var two: Array<Int> = Array()

    one = Array(0..<30000)
    Array(10000..<20000).forEach { one.append($0) }

    two = Array(20000..<40000)
    Array(30000..<40000).forEach { two.append($0) }

    measure { let _ = one.intersection(two) }
  }
}
