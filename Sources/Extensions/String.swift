import Foundation

extension String {
  var ints: [Int] {
    return self.components(separatedBy: String(" ")).map {
      return Int($0)!
    }
  }
}
