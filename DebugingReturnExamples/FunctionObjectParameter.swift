FunctionDeclSyntax
├─attributes: AttributeListSyntax
│ ╰─[0]: AttributeSyntax
│   ├─atSign: atSign
│   ├─attributeName: IdentifierTypeSyntax
│   │ ╰─name: identifier("InlineData")
│   ├─leftParen: leftParen
│   ├─arguments: LabeledExprListSyntax
│   │ ╰─[0]: LabeledExprSyntax
│   │   ╰─expression: FunctionCallExprSyntax
│   │     ├─calledExpression: DeclReferenceExprSyntax
│   │     │ ╰─baseName: identifier("URLRequest")
│   │     ├─leftParen: leftParen
│   │     ├─arguments: LabeledExprListSyntax
│   │     │ ╰─[0]: LabeledExprSyntax
│   │     │   ├─label: identifier("url")
│   │     │   ├─colon: colon
│   │     │   ╰─expression: ForceUnwrapExprSyntax
│   │     │     ├─expression: FunctionCallExprSyntax
│   │     │     │ ├─calledExpression: DeclReferenceExprSyntax
│   │     │     │ │ ╰─baseName: identifier("URL")
│   │     │     │ ├─leftParen: leftParen
│   │     │     │ ├─arguments: LabeledExprListSyntax
│   │     │     │ │ ╰─[0]: LabeledExprSyntax
│   │     │     │ │   ├─label: identifier("string")
│   │     │     │ │   ├─colon: colon
│   │     │     │ │   ╰─expression: StringLiteralExprSyntax
│   │     │     │ │     ├─openingQuote: stringQuote
│   │     │     │ │     ├─segments: StringLiteralSegmentListSyntax
│   │     │     │ │     │ ╰─[0]: StringSegmentSyntax
│   │     │     │ │     │   ╰─content: stringSegment("www.google.com")
│   │     │     │ │     ╰─closingQuote: stringQuote
│   │     │     │ ├─rightParen: rightParen
│   │     │     │ ╰─additionalTrailingClosures: MultipleTrailingClosureElementListSyntax
│   │     │     ╰─exclamationMark: exclamationMark
│   │     ├─rightParen: rightParen
│   │     ╰─additionalTrailingClosures: MultipleTrailingClosureElementListSyntax
│   ╰─rightParen: rightParen
├─modifiers: DeclModifierListSyntax
├─funcKeyword: keyword(SwiftSyntax.Keyword.func)
├─name: identifier("testingMethod")
├─signature: FunctionSignatureSyntax
│ ╰─parameterClause: FunctionParameterClauseSyntax
│   ├─leftParen: leftParen
│   ├─parameters: FunctionParameterListSyntax
│   │ ╰─[0]: FunctionParameterSyntax
│   │   ├─attributes: AttributeListSyntax
│   │   ├─modifiers: DeclModifierListSyntax
│   │   ├─firstName: identifier("url")
│   │   ├─colon: colon
│   │   ╰─type: IdentifierTypeSyntax
│   │     ╰─name: identifier("URLRequest")
│   ╰─rightParen: rightParen
|
| ...
|
