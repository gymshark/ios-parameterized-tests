//
//  XCTSharkParametersTests.swift
//
//
//  Created by Lenard Pop on 13/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkParametersTests: XCTSharkBaseTests {
    func testInlineDataSingleParameter() throws {
        assertMacroExpansion(
            """
            
            @InlineData(Tolerance.na)
            func testingMethod(tolerance: Tolerance) { }
            
            """,
            expandedSource: """
            func testingMethod(tolerance: Tolerance) { }
            
            func testingMethod_Tolerance_Na() {
                let tolerance: Tolerance = Tolerance.na
            }
            """,
            macros: testMacros
        )
    }

    func testInlineDataTwoParameters() throws {
        assertMacroExpansion(
            """
            
            @InlineData(Tolerance.na, "na")
            func testingMethod(tolerance: Tolerance, value: String) { }
            
            """,
            expandedSource: """
            func testingMethod(tolerance: Tolerance, value: String) { }
            
            func testingMethod_Tolerance_Na_Na() {
                let tolerance: Tolerance = Tolerance.na
                let value: String = "na"
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataStructParameter() throws {
        assertMacroExpansion(
            """
            
            @InlineData(URLRequest(url: URL(string: "www.google.com")!))
            func testingMethod(url: URLRequest) { }
            
            """,
            expandedSource:  """
            func testingMethod(url: URLRequest) { }

            func testingMethod_Google_Com() {
                let url: URLRequest = URLRequest(url: URL(string: "www.google.com")!)
            }
            """,
            macros: testMacros
        )
    }
    
    func testTwoInlineDataSingleValue() throws {
        assertMacroExpansion(
            """
            
            @InlineData("Hello World", 2, Tolerance.na)
            @InlineData("Gymshark", 69, Tolerance.sku)
            func testingMethod(value: String, int: Int, tolerance: Tolerance) { }
            
            """,
            expandedSource:  """
            func testingMethod(value: String, int: Int, tolerance: Tolerance) { }

            func testingMethod_Hello_World_2_Tolerance_Na() {
                let value: String = "Hello World"
                let int: Int = 2
                let tolerance: Tolerance = Tolerance.na
            }
            
            func testingMethod_Gymshark_69_Tolerance_Sku() {
                let value: String = "Gymshark"
                let int: Int = 69
                let tolerance: Tolerance = Tolerance.sku
            }
            """,
            macros: testMacros
        )
    }
}
