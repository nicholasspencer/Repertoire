import Foundation

extension String {
  var ints: [Int] {
    get {
      return self.components(separatedBy: String(" ")).flatMap {
        if let value = Int($0) {
          return value
        }
        return nil
      }
    }
  }
}
