import Foundation

protocol NumericalConvertable {
  init(_ value:String)
  init(_ value:Int)
  init(_ value:Double)
  init(_ value:Float)
  
  init(value: NumericalConvertable)
  
  func _asValue<T: NumericalConvertable>() -> T
}

extension NumericalConvertable {
  init(value: NumericalConvertable) { self = value._asValue() }
}

extension String: NumericalConvertable {
  func _asValue<T:NumericalConvertable>() -> T { return T(self) }
}

extension Int: NumericalConvertable {
  func _asValue<T:NumericalConvertable>() -> T { return T(self) }
}

extension Double: NumericalConvertable {
  func _asValue<T:NumericalConvertable>() -> T { return T(self) }
}

extension Float: NumericalConvertable {
  func _asValue<T:NumericalConvertable>() -> T { return T(self) }
}

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
  
  func values<T: NumericalConvertable>(numerical: T.Type) -> [T] {
    return self.components(separatedBy: String(" ")).flatMap {
      return numerical(value: $0)
    }
  }
}
