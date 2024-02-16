FunctionDeclSyntax
├─attributes: AttributeListSyntax
|
| ....
|
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
│ ╰─returnClause: ReturnClauseSyntax
│   ├─arrow: arrow
│   ╰─type: IdentifierTypeSyntax
│     ╰─name: identifier("String")
