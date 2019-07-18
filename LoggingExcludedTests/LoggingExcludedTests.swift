//
//  LoggingExcludedTests.swift
//  LoggingExcludedTests
//
//  Created by Anh Đức Lê on R 1/07/19.
//  Copyright © Reiwa 1 Anh Đức Lê. All rights reserved.
//

import XCTest
@testable import LoggingExcluded

class LoggingExcludedTests: XCTestCase {
  
  struct User {
    let id: Int
    @LoggingExcluded var sensitiveData: String
  }
  
  let user = User(id: 0, sensitiveData: .init(value: "IMPORTANT DATA"))

  override func setUp() {
  }

  override func tearDown() {
  }

  func testPrint() {
    XCTAssert(String(describing: user).contains("$sensitiveData: SENSITIVE") && !String(describing: user).contains("IMPORTANT DATA"))
  }
}
