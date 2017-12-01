//
//  Array.swift
//  RepertoirePackageDescription
//
//  Created by Nicholas Spencer on 12/1/17.
//

import Foundation

extension Array where Element: Hashable, Element: Comparable {
  func intersection(_ other: Array<Element>) -> Array<Element> {
    var set = Set(other)
    return self.filter {
      if set.contains($0) {
        set.remove($0)
        return true
      }
      return false
    }
  }
}

