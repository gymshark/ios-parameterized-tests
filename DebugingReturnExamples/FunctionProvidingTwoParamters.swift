FunctionDeclSyntax
├─attributes: AttributeListSyntax
│ ├─[0]: AttributeSyntax
│ │ ├─atSign: atSign
│ │ ├─attributeName: IdentifierTypeSyntax
│ │ │ ╰─name: identifier("InlineData")
│ │ ├─leftParen: leftParen
│ │ ├─arguments: LabeledExprListSyntax
│ │ │ ├─[0]: LabeledExprSyntax
│ │ │ │ ├─expression: MemberAccessExprSyntax
│ │ │ │ │ ├─base: DeclReferenceExprSyntax
│ │ │ │ │ │ ╰─baseName: identifier("Tolerance")
│ │ │ │ │ ├─period: period
│ │ │ │ │ ╰─declName: DeclReferenceExprSyntax
│ │ │ │ │   ╰─baseName: identifier("na")
│ │ │ │ ╰─trailingComma: comma
│ │ │ ╰─[1]: LabeledExprSyntax
│ │ │   ╰─expression: StringLiteralExprSyntax
│ │ │     ├─openingQuote: stringQuote
│ │ │     ├─segments: StringLiteralSegmentListSyntax
│ │ │     │ ╰─[0]: StringSegmentSyntax
│ │ │     │   ╰─content: stringSegment("na")
│ │ │     ╰─closingQuote: stringQuote
│ │ ╰─rightParen: rightParen
│ ╰─[1]: AttributeSyntax
│   ├─atSign: atSign
│   ├─attributeName: IdentifierTypeSyntax
│   │ ╰─name: identifier("InlineData")
│   ├─leftParen: leftParen
│   ├─arguments: LabeledExprListSyntax
│   │ ├─[0]: LabeledExprSyntax
│   │ │ ├─expression: MemberAccessExprSyntax
│   │ │ │ ├─base: DeclReferenceExprSyntax
│   │ │ │ │ ╰─baseName: identifier("Tolerance")
│   │ │ │ ├─period: period
│   │ │ │ ╰─declName: DeclReferenceExprSyntax
│   │ │ │   ╰─baseName: identifier("skuStrict")
│   │ │ ╰─trailingComma: comma
│   │ ╰─[1]: LabeledExprSyntax
│   │   ╰─expression: StringLiteralExprSyntax
│   │     ├─openingQuote: stringQuote
│   │     ├─segments: StringLiteralSegmentListSyntax
│   │     │ ╰─[0]: StringSegmentSyntax
│   │     │   ╰─content: stringSegment("handleScrict")
│   │     ╰─closingQuote: stringQuote
│   ╰─rightParen: rightParen
|
| ...
|
├─signature: FunctionSignatureSyntax
│ ├─parameterClause: FunctionParameterClauseSyntax
│ │ ├─leftParen: leftParen
│ │ ├─parameters: FunctionParameterListSyntax
│ │ │ ├─[0]: FunctionParameterSyntax
│ │ │ │ ├─attributes: AttributeListSyntax
│ │ │ │ ├─modifiers: DeclModifierListSyntax
│ │ │ │ ├─firstName: identifier("tolerance")
│ │ │ │ ├─colon: colon
│ │ │ │ ├─type: IdentifierTypeSyntax
│ │ │ │ │ ╰─name: identifier("Tolerance")
│ │ │ │ ╰─trailingComma: comma
│ │ │ ╰─[1]: FunctionParameterSyntax
│ │ │   ├─attributes: AttributeListSyntax
│ │ │   ├─modifiers: DeclModifierListSyntax
│ │ │   ├─firstName: identifier("value")
│ │ │   ├─colon: colon
│ │ │   ╰─type: IdentifierTypeSyntax
│ │ │     ╰─name: identifier("String")
│ │ ╰─rightParen: rightParen
│ ╰─returnClause: ReturnClauseSyntax
│   ├─arrow: arrow
│   ╰─type: IdentifierTypeSyntax
│     ╰─name: identifier("String")
|
| ...
