//
//  XCTSharkFunctionTests.swift
//
//
//  Created by Lenard Pop on 13/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkFunctionTests: XCTSharkBaseTests {
    
    func testInlineDataSingleMethod() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String) { }

            func testingMethod_Hello() {
                let value: String = "hello"
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataTwoMethod() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) { }
            
            @InlineData("Gymshark", 2)
            func methodTesting(value: String, int: Int) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String) { }

            func testingMethod_Hello() {
                let value: String = "hello"
            }
            func methodTesting(value: String, int: Int) { }

            func methodTesting_Gymshark_2() {
                let value: String = "Gymshark"
                let int: Int = 2
            }
            """,
            macros: testMacros
        )
    }
}
