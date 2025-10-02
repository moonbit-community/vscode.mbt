///|
pub(all) struct CodeActionProvider {
  provideCodeActions : (
    TextDocument,
    Union2[Range, Selection],
    CodeActionContext,
    CancellationToken,
  ) -> ProviderResult[Array[Union2[Command, CodeAction]]]
  resolveCodeAction : ((CodeAction, CancellationToken) -> ProviderResult[
    CodeAction,
  ])?
}

///|
pub(all) struct DefinitionProvider {
  provideDefinition : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[Definition, Array[DefinitionLink]],
  ]
}

///|
pub(all) struct ImplementationProvider {
  provideImplementation : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[Definition, Array[DefinitionLink]],
  ]
}

///|
pub(all) struct TypeDefinitionProvider {
  provideTypeDefinition : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[Definition, Array[DefinitionLink]],
  ]
}

///|
pub(all) struct DeclarationProvider {
  provideDeclaration : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[Definition, Array[DefinitionLink]],
  ]
}

///|
pub(all) struct HoverProvider {
  provideHover : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Hover,
  ]
}

///|
pub(all) struct DocumentHighlightProvider {
  provideDocumentHighlights : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Array[DocumentHighlight],
  ]
}

///|
pub(all) struct DocumentSymbolProvider {
  provideDocumentSymbols : (TextDocument, CancellationToken) -> ProviderResult[
    Union2[Array[SymbolInformation], Array[DocumentSymbol]],
  ]
}

///|
pub(all) struct WorkspaceSymbolProvider {
  provideWorkspaceSymbols : (String, CancellationToken) -> ProviderResult[
    Array[SymbolInformation],
  ]
  resolveWorkspaceSymbol : (SymbolInformation, CancellationToken) -> ProviderResult[
    SymbolInformation,
  ]
}

///|
pub(all) struct ReferenceProvider {
  provideReferences : (
    TextDocument,
    Position,
    ReferenceContext,
    CancellationToken,
  ) -> ProviderResult[Array[Location]]
}

///|
pub(all) struct RenameProvider {
  provideRenameEdits : (TextDocument, Position, String, CancellationToken) -> ProviderResult[
    WorkspaceEdit,
  ]
  prepareRename : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Range,
  ]
}

///|
pub(all) struct DocumentSemanticTokensProvider {
  onDidChangeSemanticTokens : Event[Unit]?
  provideDocumentSemanticTokens : (TextDocument, CancellationToken) -> ProviderResult[
    SemanticTokens,
  ]
  provideDocumentSemanticTokensEdits : (TextDocument, String, CancellationToken) -> ProviderResult[
    Union2[SemanticTokens, SemanticTokensEdits],
  ]
}

///|
pub(all) struct DocumentRangeSemanticTokensProvider {
  provideDocumentRangeSemanticTokens : (TextDocument, Range, CancellationToken) -> ProviderResult[
    SemanticTokens,
  ]
}

///|
pub(all) struct DocumentFormattingEditProvider {
  provideDocumentFormattingEdits : (
    TextDocument,
    FormattingOptions,
    CancellationToken,
  ) -> ProviderResult[Array[TextEdit]]
}

///|
pub(all) struct DocumentRangeFormattingEditProvider {
  provideDocumentRangeFormattingEdits : (
    TextDocument,
    Range,
    FormattingOptions,
    CancellationToken,
  ) -> ProviderResult[Array[TextEdit]]
}

///|
pub(all) struct OnTypeFormattingEditProvider {
  provideOnTypeFormattingEdits : (
    TextDocument,
    Position,
    String,
    FormattingOptions,
    CancellationToken,
  ) -> ProviderResult[Array[TextEdit]]
}

///|
pub(all) struct SignatureHelpProvider {
  provideSignatureHelp : (
    TextDocument,
    Position,
    CancellationToken,
    SignatureHelpContext,
  ) -> ProviderResult[SignatureHelp]
}

///|
pub(all) struct CompletionItemProvider {
  provideCompletionItems : (
    TextDocument,
    Position,
    CancellationToken,
    CompletionContext,
  ) -> ProviderResult[Union2[Array[CompletionItem], CompletionList]]
  resolveCompletionItem : ((CompletionItem, CancellationToken) -> ProviderResult[
    CompletionItem,
  ])?
}

///|
pub(all) struct InlineCompletionItemProvider {
  provideInlineCompletionItems : (
    TextDocument,
    Position,
    InlineCompletionContext,
    CancellationToken,
  ) -> ProviderResult[Union2[Array[InlineCompletionItem], InlineCompletionList]]
}

///|
pub(all) struct DocumentLinkProvider {
  provideDocumentLinks : (TextDocument, CancellationToken) -> ProviderResult[
    Array[DocumentLink],
  ]
  resolveDocumentLink : (DocumentLink, CancellationToken) -> ProviderResult[
    DocumentLink,
  ]
}

///|
pub(all) struct DocumentColorProvider {
  provideDocumentColors : (TextDocument, CancellationToken) -> ProviderResult[
    Array[ColorInformation],
  ]
  provideColorPresentations : (Color, DocumentColorContext, CancellationToken) -> ProviderResult[
    Array[ColorPresentation],
  ]
}

///|
pub(all) struct InlayHintsProvider {
  onDidChangeInlayHints : Event[Unit]?
  provideInlayHints : (TextDocument, Range, CancellationToken) -> ProviderResult[
    Array[InlayHint],
  ]
  resolveInlayHint : (InlayHint, CancellationToken) -> ProviderResult[InlayHint]
}

///|
pub(all) struct SelectionRangeProvider {
  provideSelectionRanges : (TextDocument, Array[Position], CancellationToken) -> ProviderResult[
    Array[SelectionRange],
  ]
}

///|
pub(all) struct CallHierarchyProvider {
  prepareCallHierarchy : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[CallHierarchyItem, Array[CallHierarchyItem]],
  ]
  provideCallHierarchyIncomingCalls : (CallHierarchyItem, CancellationToken) -> ProviderResult[
    Array[CallHierarchyIncomingCall],
  ]
  provideCallHierarchyOutgoingCalls : (CallHierarchyItem, CancellationToken) -> ProviderResult[
    Array[CallHierarchyOutgoingCall],
  ]
}

///|
pub(all) struct TypeHierarchyProvider {
  prepareTypeHierarchy : (TextDocument, Position, CancellationToken) -> ProviderResult[
    Union2[TypeHierarchyItem, Array[TypeHierarchyItem]],
  ]
  provideTypeHierarchySupertypes : (TypeHierarchyItem, CancellationToken) -> ProviderResult[
    Array[TypeHierarchyItem],
  ]
  provideTypeHierarchySubtypes : (TypeHierarchyItem, CancellationToken) -> ProviderResult[
    Array[TypeHierarchyItem],
  ]
}

///|
pub(all) struct LinkedEditingRangeProvider {
  provideLinkedEditingRanges : (TextDocument, Position, CancellationToken) -> ProviderResult[
    LinkedEditingRanges,
  ]
}

///|
pub(all) struct DocumentDropEditProvider {
  provideDocumentDropEdits : (
    TextDocument,
    Position,
    DataTransfer,
    CancellationToken,
  ) -> ProviderResult[DocumentDropEdit]
}

///|
pub(all) struct DocumentPasteEditProvider {
  prepareDocumentPaste : (
    TextDocument,
    Array[Range],
    DataTransfer,
    CancellationToken,
  ) -> ProviderResult[Unit]
  provideDocumentPasteEdits : (
    TextDocument,
    Array[Range],
    DataTransfer,
    PasteContext,
    CancellationToken,
  ) -> ProviderResult[DocumentPasteEdit]
}

///|
pub(all) struct TerminalLinkProvider {
  provideTerminalLinks : (TerminalLinkContext, CancellationToken) -> ProviderResult[
    Array[TerminalLink],
  ]
  handleTerminalLink : (TerminalLink) -> ProviderResult[Unit]
}

///|
pub(all) struct TerminalProfileProvider {
  provideTerminalProfile : (CancellationToken) -> ProviderResult[
    TerminalProfile,
  ]
}

///|
pub(all) struct FileDecorationProvider {
  onDidChangeFileDecorations : Event[Union3[Unit, Uri, Array[Uri]]]?
  provideFileDecoration : (Uri, CancellationToken) -> ProviderResult[
    FileDecoration,
  ]
}

///|
pub(all) struct TaskProvider {
  provideTasks : (CancellationToken) -> ProviderResult[Array[Task]]
  resolveTask : (Task, CancellationToken) -> ProviderResult[Task]
}

///|
pub(all) struct TreeDataProvider[T] {
  onDidChangeTreeData : Event[Union2[T, Array[T]]?]
  getTreeItem : (T) -> Union2[TreeItem, Thenable[TreeItem]]
  getChildren : (T) -> ProviderResult[Array[T]]
  getParent : (T) -> ProviderResult[T]
  resolveTreeItem : (TreeItem, T, CancellationToken) -> ProviderResult[TreeItem]
}

///|
pub(all) struct AuthenticationProvider {
  onDidChangeSessions : Event[
    AuthenticationProviderAuthenticationSessionsChangeEvent,
  ]
  getSessions : (Array[String]?, AuthenticationProviderSessionOptions) -> Thenable[
    Array[AuthenticationSession],
  ]
  createSession : (Array[String], AuthenticationProviderSessionOptions) -> Thenable[
    AuthenticationSession,
  ]
  removeSession : (String) -> Thenable[Unit]
}

///|
pub(all) struct ChatFollowupProvider {
  provideFollowups : (ChatResult, ChatContext, CancellationToken) -> ProviderResult[
    Array[ChatFollowup],
  ]
}

///|
pub(all) struct CommentingRangeProvider {
  provideCommentingRanges : (TextDocument, CancellationToken) -> ProviderResult[
    Union2[Array[Range], CommentingRanges],
  ]
}

///|
pub(all) struct CustomEditorProvider {
  onDidChangeCustomDocument : Event[CustomDocumentEditEvent]?
  openCustomDocument : (Uri, CustomDocumentOpenContext, CancellationToken) -> Thenable[
    CustomDocument,
  ]
  resolveCustomEditor : (CustomDocument, WebviewPanel, CancellationToken) -> Thenable[
    Unit,
  ]
  saveCustomDocument : (CustomDocument, CancellationToken) -> Thenable[Unit]
  saveCustomDocumentAs : (CustomDocument, Uri, CancellationToken) -> Thenable[
    Unit,
  ]
  revertCustomDocument : (CustomDocument, CancellationToken) -> Thenable[Unit]
  backupCustomDocument : (
    CustomDocument,
    CustomDocumentBackupContext,
    CancellationToken,
  ) -> Thenable[CustomDocumentBackup]
}

///|
pub(all) struct CustomReadonlyEditorProvider {
  openCustomDocument : (Uri, CustomDocumentOpenContext, CancellationToken) -> Thenable[
    CustomDocument,
  ]
  resolveCustomEditor : (CustomDocument, WebviewPanel, CancellationToken) -> Thenable[
    Unit,
  ]
}

///|
pub(all) struct CustomTextEditorProvider {
  resolveCustomTextEditor : (TextDocument, WebviewPanel, CancellationToken) -> Thenable[
    Unit,
  ]
}

///|
pub(all) struct DebugConfigurationProvider {
  provideDebugConfigurations : (WorkspaceFolder?, CancellationToken?) -> ProviderResult[
    Array[DebugConfiguration],
  ]
  resolveDebugConfiguration : (
    WorkspaceFolder?,
    DebugConfiguration,
    CancellationToken?,
  ) -> ProviderResult[DebugConfiguration]
  resolveDebugConfigurationWithSubstitutedVariables : (
    WorkspaceFolder?,
    DebugConfiguration,
    CancellationToken?,
  ) -> ProviderResult[DebugConfiguration]
}

///|
pub(all) struct EvaluatableExpressionProvider {
  provideEvaluatableExpression : (TextDocument, Position, CancellationToken) -> ProviderResult[
    EvaluatableExpression,
  ]
}

///|
pub(all) struct InlineValuesProvider {
  onDidChangeInlineValues : Event[Unit]?
  provideInlineValues : (
    TextDocument,
    Range,
    InlineValueContext,
    CancellationToken,
  ) -> ProviderResult[Array[InlineValue]]
}

///|
pub(all) struct McpServerDefinitionProvider {
  onDidChangeServerDefinitions : Event[Unit]?
  provideServerDefinitions : (CancellationToken) -> ProviderResult[
    Array[McpServerDefinition],
  ]
}

///|
pub(all) struct NotebookCellStatusBarItemProvider {
  onDidChangeCellStatusBarItems : Event[Unit]?
  provideCellStatusBarItems : (NotebookCell, CancellationToken) -> ProviderResult[
    Array[NotebookCellStatusBarItem],
  ]
}

///|
pub(all) struct QuickDiffProvider {
  provideOriginalResource : (Uri, CancellationToken) -> ProviderResult[Uri]
}

///|
pub(all) struct WebviewViewProvider {
  resolveWebviewView : (
    WebviewView,
    WebviewViewResolveContext,
    CancellationToken,
  ) -> Thenable[Unit]
}

///|
// ProviderResult represents async/sync provider results in VSCode API  
// Based on: export type ProviderResult<T> = T | undefined | null | Thenable<T | undefined | null>;
pub typealias Union2[T, Thenable[T]] as ProviderResult[T]

///|
// Definition types for providers
pub typealias Union2[Location, Array[Location]] as Definition

///|
pub typealias LocationLink as DefinitionLink

///|
pub(all) struct UriHandler {
  handleUri : (Uri) -> ProviderResult[Unit]
}
