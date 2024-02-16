FunctionDeclSyntax
├─attributes: AttributeListSyntax
│ ╰─[0]: AttributeSyntax
│   ├─atSign: atSign
│   ├─attributeName: IdentifierTypeSyntax
│   │ ╰─name: identifier("InlineData")
│   ├─leftParen: leftParen
│   ├─arguments: LabeledExprListSyntax
│   │ ├─[0]: LabeledExprSyntax
│   │ │ ├─expression: StringLiteralExprSyntax
│   │ │ │ ├─openingQuote: stringQuote
│   │ │ │ ├─segments: StringLiteralSegmentListSyntax
│   │ │ │ │ ╰─[0]: StringSegmentSyntax
│   │ │ │ │   ╰─content: stringSegment("hello")
│   │ │ │ ╰─closingQuote: stringQuote
│   │ │ ╰─trailingComma: comma
│   │ ╰─[1]: LabeledExprSyntax
│   │   ├─label: identifier("label")
│   │   ├─colon: colon
│   │   ╰─expression: StringLiteralExprSyntax
│   │     ├─openingQuote: stringQuote
│   │     ├─segments: StringLiteralSegmentListSyntax
│   │     │ ╰─[0]: StringSegmentSyntax
│   │     │   ╰─content: stringSegment("compare_string_hello")
│   │     ╰─closingQuote: stringQuote
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
│   │   ├─firstName: identifier("value")
│   │   ├─colon: colon
│   │   ╰─type: IdentifierTypeSyntax
│   │     ╰─name: identifier("String")
│   ╰─rightParen: rightParen
╰─body: CodeBlockSyntax
  ├─leftBrace: leftBrace
  ├─statements: CodeBlockItemListSyntax
  ╰─rightBrace: rightBrace
