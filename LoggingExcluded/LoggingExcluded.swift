//
//  LoggingExcluded.swift
//  LoggingExcluded
//
//  Created by Anh Đức Lê on R 1/07/19.
//  Copyright © Reiwa 1 Anh Đức Lê. All rights reserved.
//

import Foundation

fileprivate let excludedRepresentation = "SENSITIVE"

@propertyWrapper
struct LoggingExcluded<Value> {
  var wrappedValue: Value
  
  init(value: Value) {
    self.wrappedValue = value
  }
}

extension LoggingExcluded: CustomStringConvertible {
  var description: String {
    return excludedRepresentation
  }
}

extension LoggingExcluded: CustomDebugStringConvertible {
  var debugDescription: String {
    return excludedRepresentation
  }
}

extension LoggingExcluded: CustomLeafReflectable {
  var customMirror: Mirror {
    return .init(reflecting: excludedRepresentation)
  }
}
