//
//  XCTSharkReturnTypeTests.swift
//
//
//  Created by Lenard Pop on 12/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkReturnTypeTests: XCTSharkBaseTests {
    func testInlineDataMacroThrowReturn() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) throws { }
            
            """,
            expandedSource: """

            func testingMethod(value: String) throws { }

            func testingMethod_Hello() throws {
                let value: String = "hello"
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroAsyncThrowReturn() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) async throws { }
            
            """,
            expandedSource: """

            func testingMethod(value: String) async throws { }

            func testingMethod_Hello() async throws {
                let value: String = "hello"
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnString() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) -> String {
                return ""
            }
            
            """,
            expandedSource: """
            func testingMethod(value: String) -> String {
                return ""
            }

            func testingMethod_Hello() -> String {
                let value: String = "hello"

                return ""
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnThrowsString() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) throws -> String {
                return ""
            }
            
            """,
            expandedSource: """
            func testingMethod(value: String) throws -> String {
                return ""
            }

            func testingMethod_Hello() throws -> String {
                let value: String = "hello"

                return ""
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnAsyncString() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) async -> String {
                return ""
            }
            
            """,
            expandedSource: """
            func testingMethod(value: String) async -> String {
                return ""
            }

            func testingMethod_Hello() async -> String {
                let value: String = "hello"

                return ""
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnAsyncThrowsString() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) async throws -> String {
                return ""
            }
            
            """,
            expandedSource: """
            func testingMethod(value: String) async throws -> String {
                return ""
            }

            func testingMethod_Hello() async throws -> String {
                let value: String = "hello"

                return ""
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnOptionalString() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) -> String? {
                return nil
            }
            
            """,
            expandedSource: """
            func testingMethod(value: String) -> String? {
                return nil
            }

            func testingMethod_Hello() -> String? {
                let value: String = "hello"
            
                return nil
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnOptionalEnum() throws {
        assertMacroExpansion(
            """
            
            @InlineData(Tolerance.na)
            func testingMethod(value: Tolerance) -> Tolerance? {
                return value
            }
            
            """,
            expandedSource: """
            func testingMethod(value: Tolerance) -> Tolerance? {
                return value
            }

            func testingMethod_Tolerance_Na() -> Tolerance? {
                let value: Tolerance = Tolerance.na
            
                return value
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnURLError() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) -> URLError { 
                return URLError.cancelled
            }
            
            """,
            expandedSource: """
            
            func testingMethod(value: String) -> URLError { 
                return URLError.cancelled
            }

            func testingMethod_Hello() -> URLError {
                let value: String = "hello"
            
                return URLError.cancelled
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataMacroReturnStruct() throws {
        assertMacroExpansion(
            """
            
            @InlineData("hello")
            func testingMethod(value: String) -> URLRequest {
                return URLRequest(url: URL(string: "www.gymshark.com"))
            }
            
            """,
            expandedSource: """
            
            func testingMethod(value: String) -> URLRequest {
                return URLRequest(url: URL(string: "www.gymshark.com"))
            }

            func testingMethod_Hello() -> URLRequest {
                let value: String = "hello"
            
                return URLRequest(url: URL(string: "www.gymshark.com"))
            }
            """,
            macros: testMacros
        )
    }
}
