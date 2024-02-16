//
//  XCTSharkBaseTests.swift
//  
//
//  Created by Lenard Pop on 12/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

#if canImport(XCTSharkMacros)
import XCTSharkMacros
#endif

public class XCTSharkBaseTests: XCTestCase {
    #if canImport(XCTSharkMacros)
    
    let testMacros: [String: Macro.Type] = [
        "InlineData": InlineDataMacro.self
    ]
    
    #endif
}
