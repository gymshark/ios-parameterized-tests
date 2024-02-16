//
//  File.swift
//  
//
//  Created by Lenard Pop on 14/02/2024.
//

import Foundation
import XCTSharkParameterized
import XCTest

final class XCTSharkTestCases: XCTestCase {
    
    @InlineData(["www.gymashark.com"])
    func testURLValue(value: [String]) throws {
        let url = URLRequest(url: URL(string: "www.gymshark.com")!)
        
        XCTAssertEqual(url.url?.absoluteString, value.first)
    }
    
    @InlineData(["www.gymshark.com"], label: "_VerifyURL")
    func testValue(value: [String]) throws {
        let url = URLRequest(url: URL(string: "www.gymshark.com")!)
        
        XCTAssertEqual(url.url?.absoluteString, value.first)
    }
}
