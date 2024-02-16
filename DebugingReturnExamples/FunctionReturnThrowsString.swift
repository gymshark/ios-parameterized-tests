FunctionDeclSyntax
|
| ...
|
├─name: identifier("testingMethod")
├─signature: FunctionSignatureSyntax
│ ├─parameterClause: FunctionParameterClauseSyntax
│ │ ├─leftParen: leftParen
│ │ ├─parameters: FunctionParameterListSyntax
│ │ │ ╰─[0]: FunctionParameterSyntax
│ │ │   ├─attributes: AttributeListSyntax
│ │ │   ├─modifiers: DeclModifierListSyntax
│ │ │   ├─firstName: identifier("value")
│ │ │   ├─colon: colon
│ │ │   ╰─type: IdentifierTypeSyntax
│ │ │     ╰─name: identifier("String")
│ │ ╰─rightParen: rightParen
│ ├─effectSpecifiers: FunctionEffectSpecifiersSyntax
│ │ ╰─throwsSpecifier: keyword(SwiftSyntax.Keyword.throws)
│ ╰─returnClause: ReturnClauseSyntax
│   ├─arrow: arrow
│   ╰─type: IdentifierTypeSyntax
│     ╰─name: identifier("String")
╰─body: CodeBlockSyntax
  |
  | ...
  |
