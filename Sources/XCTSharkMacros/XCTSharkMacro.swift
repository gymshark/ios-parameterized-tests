import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import Foundation

/// Implementation of the `InlineDataMacro` macro, which produces
/// a copy of the original method with the additional parameters provided as a local variable of the copied function.
///
///     @InlineDataMacro("Gymshark")
///     func testingMethod(value: String)
///
///     @InlineDataMacro("Gymshark66", label: "Verify66)
///     func testingMethod(value: String)
///
///  will expand to
///
///     func testingMethod_Gymshark() {
///         let value: String = "Gymshark"
///     }
///
///     func testingMethodVerify66() {
///         let value: String = "Gymshark66"
///     }
///
public struct InlineDataMacro: PeerMacro {
    public static func expansion(of node: SwiftSyntax.AttributeSyntax,
                                 providingPeersOf declaration: some SwiftSyntax.DeclSyntaxProtocol,
                                 in context: some SwiftSyntaxMacros.MacroExpansionContext) throws -> [SwiftSyntax.DeclSyntax] {
        
        guard let functionDeclaration = FunctionDeclSyntax(declaration) else {
            throw XCTSharkErrors.functionsOnly
        }
        
        guard functionDeclaration.signature.parameterClause.parameters.count != 0 else {
            throw XCTSharkErrors.noFunctionParametersFound
        }
        
        guard node.getParametersCount() != 0 else {
            throw XCTSharkErrors.noMacroParametersFound
        }
        
        guard node.getParametersCount() == functionDeclaration.getParametersCount() else {
            throw XCTSharkErrors.parametersCountMismatch
        }
        
        return try XCTSharkMacroFactory(functionDeclaration: functionDeclaration, node: node)
            .build()
    }
}

@main
struct XCTSharkPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        InlineDataMacro.self
    ]
}
