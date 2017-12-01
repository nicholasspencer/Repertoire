struct HashTable<Key: Hashable, Value> {
  private typealias Element = (key: Key, value: Value)
  private typealias Bucket = [Element]
  private typealias IndexPath = (bucket: Int, index: Int?)

  private var buckets: [Bucket]

  private(set) var count = 0

  public init(capacity: Int) {
    self.buckets = Array<Bucket>(repeating: [], count: Int((Double(capacity) * (HashTable.efficiencyThreshold + 1)).rounded(.up)))
  }

  public init() {
    self.init(capacity: 100)
  }

  private var maxListLength: Int {
    return buckets.reduce(0) { length, list in
      if length < list.count {
        return list.count
      }
      return length
    }
  }

  private static var efficiencyThreshold: Double {
    return 0.8
  }

  private var efficiency: Double {
    guard buckets.count > 0 else {
      return 0
    }
    return Double(count) / Double(buckets.count)
  }

  private mutating func resize(to capacity: Int) {
    var copy = self
    copy.buckets = Array<Bucket>(repeating: [], count: capacity)

    for list in self.buckets {
      for element in list {
        copy[element.key] = element.value
      }
    }

    self.buckets = copy.buckets
  }

  private func indexPath(forKey key: Key) -> IndexPath {
    let bucket = abs(key.hashValue) % buckets.count
    for (index, listElement) in buckets[bucket].enumerated() {
      if listElement.key == key {
        return IndexPath(bucket: bucket, index: index)
      }
    }
    return IndexPath(bucket: bucket, index: nil)
  }

  public subscript(key: Key) -> Value? {
    get {
      let indexPath = self.indexPath(forKey: key)
      if let index = indexPath.index {
        return buckets[indexPath.bucket][index].value
      }
      return nil
    }
    set {
      let indexPath = self.indexPath(forKey: key)
      if let index = indexPath.index {
        if let newValue = newValue {
          buckets[indexPath.bucket][index].value = newValue
        } else {
          buckets[indexPath.bucket].remove(at: index)
          count -= 1
        }
      } else if let newValue = newValue {
        buckets[indexPath.bucket].append(Element(key: key, value: newValue))
        count += 1
        if efficiency > HashTable.efficiencyThreshold {
          resize(to: buckets.count * 2)
        }
      }
    }
  }
}
