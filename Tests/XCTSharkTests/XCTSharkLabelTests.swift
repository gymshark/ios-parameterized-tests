//
//  XCTSharkLabelTests.swift
//
//
//  Created by Lenard Pop on 14/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkLabelTests: XCTSharkBaseTests {
    
    func testInlineDataLabelFormatOne() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello", label: "CompareStringHello")
            func testingMethod(value: String) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String) { }

            func testingMethodCompareStringHello() {
                let value: String = "hello"
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataLabelFormatTwo() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello", label: "_Compare_String_Hello")
            func testingMethod(value: String) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String) { }

            func testingMethod_Compare_String_Hello() {
                let value: String = "hello"
            }
            """,
            macros: testMacros
        )
    }
}
