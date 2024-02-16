//
//  XCTSharkFunctionNamesTests.swift
//
//
//  Created by Lenard Pop on 13/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkFunctionNamesTests: XCTSharkBaseTests {
    
    func testInlineDataStringName() throws {
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
    
    func testInlineDataMemberName() throws {
        assertMacroExpansion(
            """
            
            @InlineData(Tolerance.na)
            func testingMethod(value: Tolerance) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: Tolerance) { }

            func testingMethod_Tolerance_Na() {
                let value: Tolerance = Tolerance.na
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataStructName() throws {
        assertMacroExpansion(
            """
            
            @InlineData(URLRequest(url: URL(string: "www.gymshark.com")!))
            func testingMethod(value: URLRequest) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: URLRequest) { }

            func testingMethod_Gymshark_Com() {
                let value: URLRequest = URLRequest(url: URL(string: "www.gymshark.com")!)
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMultipleParameters() throws {
        assertMacroExpansion(
            """
            
            @InlineData("Hello", 1, 5)
            @InlineData("Hello", 3, 5)
            func testingMethod(value: String, first: Int, second: Int) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String, first: Int, second: Int) { }

            func testingMethod_Hello_1_5() {
                let value: String = "Hello"
                let first: Int = 1
                let second: Int = 5
            }
            
            func testingMethod_Hello_3_5() {
                let value: String = "Hello"
                let first: Int = 3
                let second: Int = 5
            }
            """,
            macros: testMacros
        )
    }
}
