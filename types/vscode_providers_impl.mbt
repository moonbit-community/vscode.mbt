///|
pub impl Show for CodeActionProvider with output(self, logger) {
  logger.write_string("CodeActionProvider")
}

///|
pub impl Eq for CodeActionProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CodeActionProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DefinitionProvider with output(self, logger) {
  logger.write_string("DefinitionProvider")
}

///|
pub impl Eq for DefinitionProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DefinitionProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for HoverProvider with output(self, logger) {
  logger.write_string("HoverProvider")
}

///|
pub impl Eq for HoverProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for HoverProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CompletionItemProvider with output(self, logger) {
  logger.write_string("CompletionItemProvider")
}

///|
pub impl Eq for CompletionItemProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CompletionItemProvider with to_json(self) {
  Json::null()
}

///|
// Additional trait implementations for remaining provider structs
pub impl Show for ImplementationProvider with output(self, logger) {
  logger.write_string("ImplementationProvider")
}

///|
pub impl Eq for ImplementationProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ImplementationProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for TypeDefinitionProvider with output(self, logger) {
  logger.write_string("TypeDefinitionProvider")
}

///|
pub impl Eq for TypeDefinitionProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TypeDefinitionProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DeclarationProvider with output(self, logger) {
  logger.write_string("DeclarationProvider")
}

///|
pub impl Eq for DeclarationProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DeclarationProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentHighlightProvider with output(self, logger) {
  logger.write_string("DocumentHighlightProvider")
}

///|
pub impl Eq for DocumentHighlightProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentHighlightProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentSymbolProvider with output(self, logger) {
  logger.write_string("DocumentSymbolProvider")
}

///|
pub impl Eq for DocumentSymbolProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentSymbolProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for WorkspaceSymbolProvider with output(self, logger) {
  logger.write_string("WorkspaceSymbolProvider")
}

///|
pub impl Eq for WorkspaceSymbolProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for WorkspaceSymbolProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for ReferenceProvider with output(self, logger) {
  logger.write_string("ReferenceProvider")
}

///|
pub impl Eq for ReferenceProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ReferenceProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for RenameProvider with output(self, logger) {
  logger.write_string("RenameProvider")
}

///|
pub impl Eq for RenameProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for RenameProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentSemanticTokensProvider with output(self, logger) {
  logger.write_string("DocumentSemanticTokensProvider")
}

///|
pub impl Eq for DocumentSemanticTokensProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentSemanticTokensProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentRangeSemanticTokensProvider with output(self, logger) {
  logger.write_string("DocumentRangeSemanticTokensProvider")
}

///|
pub impl Eq for DocumentRangeSemanticTokensProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentRangeSemanticTokensProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentFormattingEditProvider with output(self, logger) {
  logger.write_string("DocumentFormattingEditProvider")
}

///|
pub impl Eq for DocumentFormattingEditProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentFormattingEditProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentRangeFormattingEditProvider with output(self, logger) {
  logger.write_string("DocumentRangeFormattingEditProvider")
}

///|
pub impl Eq for DocumentRangeFormattingEditProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentRangeFormattingEditProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for OnTypeFormattingEditProvider with output(self, logger) {
  logger.write_string("OnTypeFormattingEditProvider")
}

///|
pub impl Eq for OnTypeFormattingEditProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for OnTypeFormattingEditProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for SignatureHelpProvider with output(self, logger) {
  logger.write_string("SignatureHelpProvider")
}

///|
pub impl Eq for SignatureHelpProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for SignatureHelpProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for InlineCompletionItemProvider with output(self, logger) {
  logger.write_string("InlineCompletionItemProvider")
}

///|
pub impl Eq for InlineCompletionItemProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlineCompletionItemProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentLinkProvider with output(self, logger) {
  logger.write_string("DocumentLinkProvider")
}

///|
pub impl Eq for DocumentLinkProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentLinkProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentColorProvider with output(self, logger) {
  logger.write_string("DocumentColorProvider")
}

///|
pub impl Eq for DocumentColorProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentColorProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for InlayHintsProvider with output(self, logger) {
  logger.write_string("InlayHintsProvider")
}

///|
pub impl Eq for InlayHintsProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlayHintsProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for SelectionRangeProvider with output(self, logger) {
  logger.write_string("SelectionRangeProvider")
}

///|
pub impl Eq for SelectionRangeProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for SelectionRangeProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CallHierarchyProvider with output(self, logger) {
  logger.write_string("CallHierarchyProvider")
}

///|
pub impl Eq for CallHierarchyProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CallHierarchyProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for TypeHierarchyProvider with output(self, logger) {
  logger.write_string("TypeHierarchyProvider")
}

///|
pub impl Eq for TypeHierarchyProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TypeHierarchyProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for LinkedEditingRangeProvider with output(self, logger) {
  logger.write_string("LinkedEditingRangeProvider")
}

///|
pub impl Eq for LinkedEditingRangeProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for LinkedEditingRangeProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentDropEditProvider with output(self, logger) {
  logger.write_string("DocumentDropEditProvider")
}

///|
pub impl Eq for DocumentDropEditProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentDropEditProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DocumentPasteEditProvider with output(self, logger) {
  logger.write_string("DocumentPasteEditProvider")
}

///|
pub impl Eq for DocumentPasteEditProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DocumentPasteEditProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for TerminalLinkProvider with output(self, logger) {
  logger.write_string("TerminalLinkProvider")
}

///|
pub impl Eq for TerminalLinkProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TerminalLinkProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for TerminalProfileProvider with output(self, logger) {
  logger.write_string("TerminalProfileProvider")
}

///|
pub impl Eq for TerminalProfileProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TerminalProfileProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for FileDecorationProvider with output(self, logger) {
  logger.write_string("FileDecorationProvider")
}

///|
pub impl Eq for FileDecorationProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for FileDecorationProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for TaskProvider with output(self, logger) {
  logger.write_string("TaskProvider")
}

///|
pub impl Eq for TaskProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for TaskProvider with to_json(self) {
  Json::null()
}

///|
pub impl[T] Show for TreeDataProvider[T] with output(self, logger) {
  logger.write_string("TreeDataProvider")
}

///|
pub impl[T] Eq for TreeDataProvider[T] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[T] ToJson for TreeDataProvider[T] with to_json(self) {
  Json::null()
}

///|
pub impl Show for AuthenticationProvider with output(self, logger) {
  logger.write_string("AuthenticationProvider")
}

///|
pub impl Eq for AuthenticationProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for AuthenticationProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for ChatFollowupProvider with output(self, logger) {
  logger.write_string("ChatFollowupProvider")
}

///|
pub impl Eq for ChatFollowupProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for ChatFollowupProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CommentingRangeProvider with output(self, logger) {
  logger.write_string("CommentingRangeProvider")
}

///|
pub impl Eq for CommentingRangeProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CommentingRangeProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomEditorProvider with output(self, logger) {
  logger.write_string("CustomEditorProvider")
}

///|
pub impl Eq for CustomEditorProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomEditorProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomReadonlyEditorProvider with output(self, logger) {
  logger.write_string("CustomReadonlyEditorProvider")
}

///|
pub impl Eq for CustomReadonlyEditorProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomReadonlyEditorProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for CustomTextEditorProvider with output(self, logger) {
  logger.write_string("CustomTextEditorProvider")
}

///|
pub impl Eq for CustomTextEditorProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for CustomTextEditorProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for DebugConfigurationProvider with output(self, logger) {
  logger.write_string("DebugConfigurationProvider")
}

///|
pub impl Eq for DebugConfigurationProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for DebugConfigurationProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for EvaluatableExpressionProvider with output(self, logger) {
  logger.write_string("EvaluatableExpressionProvider")
}

///|
pub impl Eq for EvaluatableExpressionProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for EvaluatableExpressionProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for InlineValuesProvider with output(self, logger) {
  logger.write_string("InlineValuesProvider")
}

///|
pub impl Eq for InlineValuesProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for InlineValuesProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for McpServerDefinitionProvider with output(self, logger) {
  logger.write_string("McpServerDefinitionProvider")
}

///|
pub impl Eq for McpServerDefinitionProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for McpServerDefinitionProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for NotebookCellStatusBarItemProvider with output(self, logger) {
  logger.write_string("NotebookCellStatusBarItemProvider")
}

///|
pub impl Eq for NotebookCellStatusBarItemProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for NotebookCellStatusBarItemProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for QuickDiffProvider with output(self, logger) {
  logger.write_string("QuickDiffProvider")
}

///|
pub impl Eq for QuickDiffProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for QuickDiffProvider with to_json(self) {
  Json::null()
}

///|
pub impl Show for WebviewViewProvider with output(self, logger) {
  logger.write_string("WebviewViewProvider")
}

///|
pub impl Eq for WebviewViewProvider with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for WebviewViewProvider with to_json(self) {
  Json::null()
}
