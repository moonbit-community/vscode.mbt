///|
pub impl Show for CodeActionProvider with fn output(self, logger) {
  logger.write_string("CodeActionProvider")
}

///|
pub impl Eq for CodeActionProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CodeActionProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DefinitionProvider with fn output(self, logger) {
  logger.write_string("DefinitionProvider")
}

///|
pub impl Eq for DefinitionProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DefinitionProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for HoverProvider with fn output(self, logger) {
  logger.write_string("HoverProvider")
}

///|
pub impl Eq for HoverProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for HoverProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CompletionItemProvider with fn output(self, logger) {
  logger.write_string("CompletionItemProvider")
}

///|
pub impl Eq for CompletionItemProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CompletionItemProvider with fn to_json(self) {
  Json::null()
}

///|
// Additional trait implementations for remaining provider structs
pub impl Show for ImplementationProvider with fn output(self, logger) {
  logger.write_string("ImplementationProvider")
}

///|
pub impl Eq for ImplementationProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ImplementationProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for TypeDefinitionProvider with fn output(self, logger) {
  logger.write_string("TypeDefinitionProvider")
}

///|
pub impl Eq for TypeDefinitionProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TypeDefinitionProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DeclarationProvider with fn output(self, logger) {
  logger.write_string("DeclarationProvider")
}

///|
pub impl Eq for DeclarationProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DeclarationProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentHighlightProvider with fn output(self, logger) {
  logger.write_string("DocumentHighlightProvider")
}

///|
pub impl Eq for DocumentHighlightProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentHighlightProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentSymbolProvider with fn output(self, logger) {
  logger.write_string("DocumentSymbolProvider")
}

///|
pub impl Eq for DocumentSymbolProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentSymbolProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for WorkspaceSymbolProvider with fn output(self, logger) {
  logger.write_string("WorkspaceSymbolProvider")
}

///|
pub impl Eq for WorkspaceSymbolProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for WorkspaceSymbolProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for ReferenceProvider with fn output(self, logger) {
  logger.write_string("ReferenceProvider")
}

///|
pub impl Eq for ReferenceProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ReferenceProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for RenameProvider with fn output(self, logger) {
  logger.write_string("RenameProvider")
}

///|
pub impl Eq for RenameProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for RenameProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentSemanticTokensProvider with fn output(self, logger) {
  logger.write_string("DocumentSemanticTokensProvider")
}

///|
pub impl Eq for DocumentSemanticTokensProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentSemanticTokensProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentRangeSemanticTokensProvider with fn output(
  self,
  logger,
) {
  logger.write_string("DocumentRangeSemanticTokensProvider")
}

///|
pub impl Eq for DocumentRangeSemanticTokensProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentRangeSemanticTokensProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentFormattingEditProvider with fn output(self, logger) {
  logger.write_string("DocumentFormattingEditProvider")
}

///|
pub impl Eq for DocumentFormattingEditProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentFormattingEditProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentRangeFormattingEditProvider with fn output(
  self,
  logger,
) {
  logger.write_string("DocumentRangeFormattingEditProvider")
}

///|
pub impl Eq for DocumentRangeFormattingEditProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentRangeFormattingEditProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for OnTypeFormattingEditProvider with fn output(self, logger) {
  logger.write_string("OnTypeFormattingEditProvider")
}

///|
pub impl Eq for OnTypeFormattingEditProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for OnTypeFormattingEditProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for SignatureHelpProvider with fn output(self, logger) {
  logger.write_string("SignatureHelpProvider")
}

///|
pub impl Eq for SignatureHelpProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for SignatureHelpProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for InlineCompletionItemProvider with fn output(self, logger) {
  logger.write_string("InlineCompletionItemProvider")
}

///|
pub impl Eq for InlineCompletionItemProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlineCompletionItemProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentLinkProvider with fn output(self, logger) {
  logger.write_string("DocumentLinkProvider")
}

///|
pub impl Eq for DocumentLinkProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentLinkProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentColorProvider with fn output(self, logger) {
  logger.write_string("DocumentColorProvider")
}

///|
pub impl Eq for DocumentColorProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentColorProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for InlayHintsProvider with fn output(self, logger) {
  logger.write_string("InlayHintsProvider")
}

///|
pub impl Eq for InlayHintsProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlayHintsProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for SelectionRangeProvider with fn output(self, logger) {
  logger.write_string("SelectionRangeProvider")
}

///|
pub impl Eq for SelectionRangeProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for SelectionRangeProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CallHierarchyProvider with fn output(self, logger) {
  logger.write_string("CallHierarchyProvider")
}

///|
pub impl Eq for CallHierarchyProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CallHierarchyProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for TypeHierarchyProvider with fn output(self, logger) {
  logger.write_string("TypeHierarchyProvider")
}

///|
pub impl Eq for TypeHierarchyProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TypeHierarchyProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for LinkedEditingRangeProvider with fn output(self, logger) {
  logger.write_string("LinkedEditingRangeProvider")
}

///|
pub impl Eq for LinkedEditingRangeProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for LinkedEditingRangeProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentDropEditProvider with fn output(self, logger) {
  logger.write_string("DocumentDropEditProvider")
}

///|
pub impl Eq for DocumentDropEditProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentDropEditProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentPasteEditProvider with fn output(self, logger) {
  logger.write_string("DocumentPasteEditProvider")
}

///|
pub impl Eq for DocumentPasteEditProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentPasteEditProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for TerminalLinkProvider with fn output(self, logger) {
  logger.write_string("TerminalLinkProvider")
}

///|
pub impl Eq for TerminalLinkProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TerminalLinkProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for TerminalProfileProvider with fn output(self, logger) {
  logger.write_string("TerminalProfileProvider")
}

///|
pub impl Eq for TerminalProfileProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TerminalProfileProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for FileDecorationProvider with fn output(self, logger) {
  logger.write_string("FileDecorationProvider")
}

///|
pub impl Eq for FileDecorationProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for FileDecorationProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for TaskProvider with fn output(self, logger) {
  logger.write_string("TaskProvider")
}

///|
pub impl Eq for TaskProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TaskProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl[T] Show for TreeDataProvider[T] with fn output(self, logger) {
  logger.write_string("TreeDataProvider")
}

///|
pub impl[T] Eq for TreeDataProvider[T] with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[T] ToJson for TreeDataProvider[T] with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for AuthenticationProvider with fn output(self, logger) {
  logger.write_string("AuthenticationProvider")
}

///|
pub impl Eq for AuthenticationProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for AuthenticationProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for ChatFollowupProvider with fn output(self, logger) {
  logger.write_string("ChatFollowupProvider")
}

///|
pub impl Eq for ChatFollowupProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ChatFollowupProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CommentingRangeProvider with fn output(self, logger) {
  logger.write_string("CommentingRangeProvider")
}

///|
pub impl Eq for CommentingRangeProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CommentingRangeProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomEditorProvider with fn output(self, logger) {
  logger.write_string("CustomEditorProvider")
}

///|
pub impl Eq for CustomEditorProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomEditorProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomReadonlyEditorProvider with fn output(self, logger) {
  logger.write_string("CustomReadonlyEditorProvider")
}

///|
pub impl Eq for CustomReadonlyEditorProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomReadonlyEditorProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomTextEditorProvider with fn output(self, logger) {
  logger.write_string("CustomTextEditorProvider")
}

///|
pub impl Eq for CustomTextEditorProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomTextEditorProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for DebugConfigurationProvider with fn output(self, logger) {
  logger.write_string("DebugConfigurationProvider")
}

///|
pub impl Eq for DebugConfigurationProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DebugConfigurationProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for EvaluatableExpressionProvider with fn output(self, logger) {
  logger.write_string("EvaluatableExpressionProvider")
}

///|
pub impl Eq for EvaluatableExpressionProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for EvaluatableExpressionProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for InlineValuesProvider with fn output(self, logger) {
  logger.write_string("InlineValuesProvider")
}

///|
pub impl Eq for InlineValuesProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlineValuesProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for McpServerDefinitionProvider with fn output(self, logger) {
  logger.write_string("McpServerDefinitionProvider")
}

///|
pub impl Eq for McpServerDefinitionProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for McpServerDefinitionProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for NotebookCellStatusBarItemProvider with fn output(self, logger) {
  logger.write_string("NotebookCellStatusBarItemProvider")
}

///|
pub impl Eq for NotebookCellStatusBarItemProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for NotebookCellStatusBarItemProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for QuickDiffProvider with fn output(self, logger) {
  logger.write_string("QuickDiffProvider")
}

///|
pub impl Eq for QuickDiffProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for QuickDiffProvider with fn to_json(self) {
  Json::null()
}

///|
pub impl Show for WebviewViewProvider with fn output(self, logger) {
  logger.write_string("WebviewViewProvider")
}

///|
pub impl Eq for WebviewViewProvider with fn equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for WebviewViewProvider with fn to_json(self) {
  Json::null()
}
