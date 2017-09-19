import Foundation


extension Dictionary {
  subscript<Index: RawRepresentable>(index: Index) -> Value? where Index.RawValue == String {
    get {
      if let key = index.rawValue as? Key {
        return self[key]
      }
      return nil
    }
    
    set {
      if let key = index.rawValue as? Key {
        self[key] = newValue
      }
    }
  }
}
