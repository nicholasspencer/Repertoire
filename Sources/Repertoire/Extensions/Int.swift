import Foundation

extension Int {
  static func greatestCommonDivisor(_ left: Int, _ right: Int) -> Int {
    var a = left
    var b = right
    
    while b > 0 {
      let temp = b
      b = a % b
      a = temp
    }
    
    return a
  }
  
  static func leastCommonMultiple(_ left: Int, _ right: Int) -> Int {
    return left * (right / greatestCommonDivisor(left, right))
  }
  
  func greatestCommonDivisor(_ right: Int) -> Int {
    return Int.greatestCommonDivisor(self, right)
  }
  
  func leastCommonMultiple(_ right: Int) -> Int {
    return Int.leastCommonMultiple(self, right)
  }
}

extension Array where Iterator.Element == Int {
  var greatestCommonDivisor: Int? {
    if self.count == 0 {
      return nil
    }
    
    if self.count == 1 {
      return self[0]
    }
    
    return self.enumerated().dropFirst().reduce(self[0]) { result, next in
      return result.greatestCommonDivisor(next.element)
    }
  }
  
  var leastCommonMultiple: Int? {
    if self.count == 0 {
      return nil
    }
    
    if self.count == 1 {
      return self[0]
    }
    
    return self.enumerated().dropFirst().reduce(self[0]) { result, next in
      return result.leastCommonMultiple(next.element)
    }
  }
}
