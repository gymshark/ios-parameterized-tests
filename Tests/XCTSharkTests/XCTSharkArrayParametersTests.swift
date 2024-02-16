//
//  XCTSharkArrayParametersTests.swift
//
//
//  Created by Lenard Pop on 12/02/2024.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

final class XCTSharkArrayParametersTests: XCTSharkBaseTests {
    func testInlineDataArrayStringValue() throws {
        assertMacroExpansion(
            """
            
            @InlineData(["Hello World", "2", "Tolerance.na"])
            func testingMethod(values: [String]) { }
            
            """,
            expandedSource:  """
            func testingMethod(values: [String]) { }

            func testingMethod_Hello_World_2_Tolerance_Na() {
                let values: [String] = ["Hello World", "2", "Tolerance.na"]
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataArrayEnumToleranceValue() throws {
        assertMacroExpansion(
            """
            
            @InlineData([Tolerance.na, Tolerance.sku, Tolerance.script])
            func testingMethod(tolerance: [Tolerance]) { }
            
            """,
            expandedSource:  """
            func testingMethod(tolerance: [Tolerance]) { }

            func testingMethod_Tolerance_Na_Tolerance_Sku_Tolerance_Script() {
                let tolerance: [Tolerance] = [Tolerance.na, Tolerance.sku, Tolerance.script]
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataArrayEnumHTTPErrorValue() throws {
        assertMacroExpansion(
            """
            
            @InlineData([HTTPError.cancelled, HTTPError.invalid])
            func testingMethod(httpError: [HTTPError]) { }
            
            """,
            expandedSource:  """
            func testingMethod(httpError: [HTTPError]) { }

            func testingMethod_Httperror_Cancelled_Httperror_Invalid() {
                let httpError: [HTTPError] = [HTTPError.cancelled, HTTPError.invalid]
            }
            """,
            macros: testMacros
        )
    }
    
    func testInlineDataArrayURLRequestValue() throws {
        assertMacroExpansion(
            """
            
            @InlineData([URLRequest(url: URL(string: "www.gymshark.com")!), URLRequest(url: URL(string: "www.google.com")!), URLRequest(url: URL(string: "www.placeholder.com")!)])
            func testingMethod(urlRequests: [URLRequest]) { }
            
            """,
            expandedSource:  """
            func testingMethod(urlRequests: [URLRequest]) { }

            func testingMethod_Gymshark_Com_Google_Com_Placeholder_Com() {
                let urlRequests: [URLRequest] = [URLRequest(url: URL(string: "www.gymshark.com")!), URLRequest(url: URL(string: "www.google.com")!), URLRequest(url: URL(string: "www.placeholder.com")!)]
            }
            """,
            macros: testMacros
        )
    }   
    
    func testInlineDataArrayURLRequestWithLabel() throws {
        assertMacroExpansion(
            """
            
            @InlineData([URLRequest(url: URL(string: "www.gymshark.com")!), URLRequest(url: URL(string: "www.google.com")!), URLRequest(url: URL(string: "www.placeholder.com")!)], label: "VerifyUrls")
            func testingMethod(urlRequests: [URLRequest]) { }
            
            """,
            expandedSource:  """
            func testingMethod(urlRequests: [URLRequest]) { }

            func testingMethodVerifyUrls() {
                let urlRequests: [URLRequest] = [URLRequest(url: URL(string: "www.gymshark.com")!), URLRequest(url: URL(string: "www.google.com")!), URLRequest(url: URL(string: "www.placeholder.com")!)]
            }
            """,
            macros: testMacros
        )
    }
    
    func testTwoInlineDataArrayFormatted() throws {
        assertMacroExpansion(
            """

            @InlineData(["sizeInStock",
                          "features",
                          "canonicalColour",
                          "fit"
            ])
            @InlineData(["fit",
                         "price",
                         "genderedCollections",
                         "discountPercentage",
                         "patternType"
            ])
            func testingMethod(urlRequests: [String]) { }
            
            """,
            expandedSource:  """
            func testingMethod(urlRequests: [String]) { }

            func testingMethod_Sizeinstock_Features_Canonicalcolour_Fit() {
                let urlRequests: [String] = ["sizeInStock",
                          "features",
                          "canonicalColour",
                          "fit"
                ]
            }

            func testingMethod_Fit_Price_Genderedcollections_Discountpercentage_Patterntype() {
                let urlRequests: [String] = ["fit",
                         "price",
                         "genderedCollections",
                         "discountPercentage",
                         "patternType"
                ]
            }
            """,
            macros: testMacros
        )
    }
}
