///|
pub(all) struct Vscode {
  version : String
  tasks : Tasks
  env : Env
  commands : Commands
  window : Window
  workspace : Workspace
  languages : Languages
  notebooks : Notebooks
  scm : Scm
  debug : Debug
  extensions : Extensions
  authentication : Authentication
  l10n : L10N
  tests : Tests
  chat : Chat
  lm : Lm
}

///|
pub(all) struct Tasks {
  registerTaskProvider : (String, TaskProvider) -> Disposable
  fetchTasks : (TaskFilter?) -> Thenable[Array[Task]]
  executeTask : (Task) -> Thenable[TaskExecution]
  taskExecutions : Array[TaskExecution]
  onDidStartTask : Event[TaskStartEvent]
  onDidEndTask : Event[TaskEndEvent]
  onDidStartTaskProcess : Event[TaskProcessStartEvent]
  onDidEndTaskProcess : Event[TaskProcessEndEvent]
}

///|
pub(all) struct Env {
  appName : String
  appRoot : String
  appHost : String
  uriScheme : String
  language : String
  clipboard : Clipboard
  machineId : String
  sessionId : String
  isNewAppInstall : Bool
  isTelemetryEnabled : Bool
  remoteName : String?
  shell : String
  uiKind : UIKind
  logLevel : LogLevel
  onDidChangeTelemetryEnabled : Event[Bool]
  onDidChangeShell : Event[String]
  onDidChangeLogLevel : Event[LogLevel]
  createTelemetryLogger : (TelemetrySender, TelemetryLoggerOptions?) -> TelemetryLogger
  openExternal : (Uri) -> Thenable[Bool]
  asExternalUri : (Uri) -> Thenable[Uri]
}

///|
pub(all) struct Commands {
  /// (command : String, callback : (...args : Any) -> Any) -> Disposable
  registerCommand : (String, Func0Rest[Any, Any]) -> Disposable
  /// (command : String, callback : (textEditor : TextEditor, edit : TextEditorEdit, ...args : Any) -> Unit) -> Disposable
  registerTextEditorCommand : (
    String,
    Func2Rest[Unit, Any, TextEditor, TextEditorEdit],
  ) -> Disposable
  /// (command : String, ...rest : Any) -> Thenable[Any]
  executeCommand : Func1Rest[Thenable[Any], Any, String]
  getCommands : (Bool?) -> Thenable[Array[String]]
}

///|
pub(all) struct Window {
  tabGroups : TabGroups
  activeTextEditor : TextEditor?
  visibleTextEditors : Array[TextEditor]
  visibleNotebookEditors : Array[NotebookEditor]
  activeNotebookEditor : NotebookEditor?
  terminals : Array[Terminal]
  activeTerminal : Terminal?
  state : WindowState
  activeColorTheme : ColorTheme
  onDidChangeActiveTextEditor : Event[TextEditor?]
  onDidChangeVisibleTextEditors : Event[Array[TextEditor]]
  onDidChangeTextEditorSelection : Event[TextEditorSelectionChangeEvent]
  onDidChangeTextEditorVisibleRanges : Event[TextEditorVisibleRangesChangeEvent]
  onDidChangeTextEditorOptions : Event[TextEditorOptionsChangeEvent]
  onDidChangeTextEditorViewColumn : Event[TextEditorViewColumnChangeEvent]
  onDidChangeVisibleNotebookEditors : Event[Array[NotebookEditor]]
  onDidChangeActiveNotebookEditor : Event[NotebookEditor?]
  onDidChangeNotebookEditorSelection : Event[NotebookEditorSelectionChangeEvent]
  onDidChangeNotebookEditorVisibleRanges : Event[
    NotebookEditorVisibleRangesChangeEvent,
  ]
  onDidChangeActiveTerminal : Event[Terminal?]
  onDidOpenTerminal : Event[Terminal]
  onDidCloseTerminal : Event[Terminal]
  onDidChangeTerminalState : Event[Terminal]
  onDidChangeTerminalShellIntegration : Event[
    TerminalShellIntegrationChangeEvent,
  ]
  onDidStartTerminalShellExecution : Event[TerminalShellExecutionStartEvent]
  onDidEndTerminalShellExecution : Event[TerminalShellExecutionEndEvent]
  onDidChangeWindowState : Event[WindowState]
  onDidChangeActiveColorTheme : Event[ColorTheme]
  showTextDocument : (TextDocument, TextDocumentShowOptions?) -> Thenable[
    TextEditor,
  ]
  showNotebookDocument : (NotebookDocument, NotebookDocumentShowOptions?) -> Thenable[
    NotebookEditor,
  ]
  createTextEditorDecorationType : (DecorationRenderOptions) -> TextEditorDecorationType
  /// (message : String, ...items : String) -> Thenable[String?]
  showInformationMessage : Func1Rest[Thenable[String?], String, String]
  /// (message : String, ...items : MessageItem) -> Thenable[MessageItem?]
  showInformationMessageItems : Func1Rest[
    Thenable[MessageItem?],
    MessageItem,
    String,
  ]
  /// (message : String, options : MessageOptions, ...items : MessageItem) -> Thenable[MessageItem?]
  showInformationMessageWithOptions : Func2Rest[
    Thenable[MessageItem?],
    MessageItem,
    String,
    MessageOptions,
  ]
  /// (message : String, ...items : String) -> Thenable[String?]
  showWarningMessage : Func1Rest[Thenable[String?], String, String]
  /// (message : String, ...items : MessageItem) -> Thenable[MessageItem?]
  showWarningMessageItems : Func1Rest[
    Thenable[MessageItem?],
    MessageItem,
    String,
  ]
  /// (message : String, options : MessageOptions, ...items : MessageItem) -> Thenable[MessageItem?]
  showWarningMessageWithOptions : Func2Rest[
    Thenable[MessageItem?],
    MessageItem,
    String,
    MessageOptions,
  ]
  /// (message : String, ...items : String) -> Thenable[String?]
  showErrorMessage : Func1Rest[Thenable[String?], String, String]
  /// (message : String, ...items : MessageItem) -> Thenable[MessageItem?]
  showErrorMessageItems : Func1Rest[Thenable[MessageItem?], MessageItem, String]
  /// (message : String, options : MessageOptions, ...items : MessageItem) -> Thenable[MessageItem?]
  showErrorMessageWithOptions : Func2Rest[
    Thenable[MessageItem?],
    MessageItem,
    String,
    MessageOptions,
  ]
  showQuickPick : (Array[String], QuickPickOptions?) -> Thenable[String?]
  showWorkspaceFolderPick : (WorkspaceFolderPickOptions?) -> Thenable[
    WorkspaceFolder?,
  ]
  showOpenDialog : (OpenDialogOptions?) -> Thenable[Array[Uri]?]
  showSaveDialog : (SaveDialogOptions?) -> Thenable[Uri?]
  showInputBox : (InputBoxOptions?) -> Thenable[String?]
  createQuickPick : () -> QuickPick
  createInputBox : () -> InputBox
  createOutputChannel : (String, String?) -> OutputChannel
  createWebviewPanel : (String, String, ViewColumn, WebviewPanelOptions?) -> WebviewPanel
  setStatusBarMessage : (String, Int?) -> Disposable
  withScmProgress : ((Progress[Int]) -> Thenable[Any]) -> Thenable[Any]
  withProgress : (
    ProgressOptions,
    (Progress[Any], CancellationToken) -> Thenable[Any],
  ) -> Thenable[Any]
  createStatusBarItem : (String, StatusBarAlignment, Int?) -> StatusBarItem
  createTerminal : (String?, String?, String?) -> Terminal
  registerTreeDataProvider : (String, TreeDataProvider[Any]) -> Disposable
  createTreeView : (String, TreeViewOptions) -> TreeView
  registerUriHandler : (UriHandler) -> Disposable
  registerWebviewPanelSerializer : (String, WebviewPanelSerializer) -> Disposable
  registerWebviewViewProvider : (
    String,
    WebviewViewProvider,
    WebviewViewResolveContext?,
  ) -> Disposable
  registerCustomEditorProvider : (
    String,
    CustomTextEditorProvider,
    WebviewPanelOptions?,
  ) -> Disposable
  registerTerminalLinkProvider : (TerminalLinkProvider) -> Disposable
  registerTerminalProfileProvider : (String, TerminalProfileProvider) -> Disposable
  registerFileDecorationProvider : (FileDecorationProvider) -> Disposable
}

///|
pub(all) struct Workspace {
  fs : FileSystem
  rootPath : String?
  workspaceFolders : Array[WorkspaceFolder]?
  name : String?
  workspaceFile : Uri?
  textDocuments : Array[TextDocument]
  notebookDocuments : Array[NotebookDocument]
  isTrusted : Bool
  onDidChangeWorkspaceFolders : Event[WorkspaceFoldersChangeEvent]
  onDidOpenTextDocument : Event[TextDocument]
  onDidCloseTextDocument : Event[TextDocument]
  onDidChangeTextDocument : Event[TextDocumentChangeEvent]
  onWillSaveTextDocument : Event[TextDocumentWillSaveEvent]
  onDidSaveTextDocument : Event[TextDocument]
  onDidChangeNotebookDocument : Event[NotebookDocumentChangeEvent]
  onWillSaveNotebookDocument : Event[NotebookDocumentWillSaveEvent]
  onDidSaveNotebookDocument : Event[NotebookDocument]
  onDidOpenNotebookDocument : Event[NotebookDocument]
  onDidCloseNotebookDocument : Event[NotebookDocument]
  onWillCreateFiles : Event[FileWillCreateEvent]
  onDidCreateFiles : Event[FileCreateEvent]
  onWillDeleteFiles : Event[FileWillDeleteEvent]
  onDidDeleteFiles : Event[FileDeleteEvent]
  onWillRenameFiles : Event[FileWillRenameEvent]
  onDidRenameFiles : Event[FileRenameEvent]
  onDidChangeConfiguration : Event[ConfigurationChangeEvent]
  onDidGrantWorkspaceTrust : Event[Unit]
  getWorkspaceFolder : (Uri) -> WorkspaceFolder?
  asRelativePath : (String, Bool?) -> String
  /// (start : Int, deleteCount : Int?, ...workspaceFoldersToAdd : WorkspaceFolder) -> Bool
  updateWorkspaceFolders : Func2Rest[Bool, WorkspaceFolder, Int, Int?]
  createFileSystemWatcher : (GlobPattern, Bool?, Bool?, Bool?) -> FileSystemWatcher
  findFiles : (GlobPattern, GlobPattern?, Int?, CancellationToken?) -> Thenable[
    Array[Uri],
  ]
  save : (Uri) -> Thenable[Uri?]
  saveAs : (Uri) -> Thenable[Uri?]
  saveAll : (Bool?) -> Thenable[Bool]
  applyEdit : (WorkspaceEdit, WorkspaceEditMetadata?) -> Thenable[Bool]
  openTextDocument : (Uri) -> Thenable[TextDocument]
  registerTextDocumentContentProvider : (String, TextDocumentContentProvider) -> Disposable
  openNotebookDocument : (Uri) -> Thenable[NotebookDocument]
  registerNotebookSerializer : (
    String,
    NotebookSerializer,
    NotebookDocumentContentOptions?,
  ) -> Disposable
  getConfiguration : (String?, ConfigurationScope?) -> WorkspaceConfiguration
  registerTaskProvider : (String, TaskProvider) -> Disposable
  registerFileSystemProvider : (
    String,
    FileSystemProvider,
    FileSystemProviderOptions?,
  ) -> Disposable
  decode : (Array[Byte], String?) -> Thenable[String]
  encode : (String, String?) -> Thenable[Array[Byte]]
}

///|
pub(all) struct Languages {
  getLanguages : () -> Thenable[Array[String]]
  setTextDocumentLanguage : (TextDocument, String) -> Thenable[TextDocument]
  match_document : (DocumentSelector, TextDocument) -> Int
  getDiagnostics : (Uri?) -> Array[Diagnostic]
  createDiagnosticCollection : (String?) -> DiagnosticCollection
  createLanguageStatusItem : (String, DocumentSelector) -> LanguageStatusItem
  /// (selector : DocumentSelector, provider : CompletionItemProvider, ...triggerCharacters : String) -> Disposable
  registerCompletionItemProvider : Func2Rest[
    Disposable,
    String,
    DocumentSelector,
    CompletionItemProvider,
  ]
  registerInlineCompletionItemProvider : (
    DocumentSelector,
    InlineCompletionItemProvider,
  ) -> Disposable
  registerCodeActionsProvider : (
    DocumentSelector,
    CodeActionProvider,
    CodeActionProviderMetadata?,
  ) -> Disposable
  registerCodeLensProvider : (DocumentSelector, CodeLensProvider) -> Disposable
  registerDefinitionProvider : (DocumentSelector, DefinitionProvider) -> Disposable
  registerImplementationProvider : (DocumentSelector, ImplementationProvider) -> Disposable
  registerTypeDefinitionProvider : (DocumentSelector, TypeDefinitionProvider) -> Disposable
  registerDeclarationProvider : (DocumentSelector, DeclarationProvider) -> Disposable
  registerHoverProvider : (DocumentSelector, HoverProvider) -> Disposable
  registerEvaluatableExpressionProvider : (
    DocumentSelector,
    EvaluatableExpressionProvider,
  ) -> Disposable
  registerInlineValuesProvider : (DocumentSelector, InlineValuesProvider) -> Disposable
  registerDocumentHighlightProvider : (
    DocumentSelector,
    DocumentHighlightProvider,
  ) -> Disposable
  registerDocumentSymbolProvider : (
    DocumentSelector,
    DocumentSymbolProvider,
    DocumentSymbolProviderMetadata?,
  ) -> Disposable
  registerWorkspaceSymbolProvider : (WorkspaceSymbolProvider) -> Disposable
  registerReferenceProvider : (DocumentSelector, ReferenceProvider) -> Disposable
  registerRenameProvider : (DocumentSelector, RenameProvider) -> Disposable
  registerDocumentSemanticTokensProvider : (
    DocumentSelector,
    DocumentSemanticTokensProvider,
    SemanticTokensLegend,
  ) -> Disposable
  registerDocumentRangeSemanticTokensProvider : (
    DocumentSelector,
    DocumentRangeSemanticTokensProvider,
    SemanticTokensLegend,
  ) -> Disposable
  registerDocumentFormattingEditProvider : (
    DocumentSelector,
    DocumentFormattingEditProvider,
  ) -> Disposable
  registerDocumentRangeFormattingEditProvider : (
    DocumentSelector,
    DocumentRangeFormattingEditProvider,
  ) -> Disposable
  /// (selector : DocumentSelector, provider : OnTypeFormattingEditProvider, firstTriggerCharacter : String, ...moreTriggerCharacter : String) -> Disposable
  registerOnTypeFormattingEditProvider : Func3Rest[
    Disposable,
    String,
    DocumentSelector,
    OnTypeFormattingEditProvider,
    String,
  ]
  /// (selector : DocumentSelector, provider : SignatureHelpProvider, ...triggerCharacters : String) -> Disposable
  registerSignatureHelpProvider : Func2Rest[
    Disposable,
    String,
    DocumentSelector,
    SignatureHelpProvider,
  ]
  registerDocumentLinkProvider : (DocumentSelector, DocumentLinkProvider) -> Disposable
  registerColorProvider : (DocumentSelector, DocumentColorProvider) -> Disposable
  registerInlayHintsProvider : (DocumentSelector, InlayHintsProvider) -> Disposable
  registerFoldingRangeProvider : (DocumentSelector, FoldingRangeProvider) -> Disposable
  registerSelectionRangeProvider : (DocumentSelector, SelectionRangeProvider) -> Disposable
  registerCallHierarchyProvider : (DocumentSelector, CallHierarchyProvider) -> Disposable
  registerTypeHierarchyProvider : (DocumentSelector, TypeHierarchyProvider) -> Disposable
  onDidChangeDiagnostics : Event[DiagnosticChangeEvent]
}

///|
pub(all) struct Notebooks {
  createNotebookController : (
    String,
    String,
    String,
    ((Array[NotebookCell], NotebookDocument, NotebookController) -> Thenable[
      Unit,
    ])?,
  ) -> NotebookController
  registerNotebookCellStatusBarItemProvider : (
    String,
    NotebookCellStatusBarItemProvider,
  ) -> Disposable
  createRendererMessaging : (String) -> NotebookRendererMessaging
}

///|
pub(all) struct Scm {
  inputBox : SourceControlInputBox
  createSourceControl : (String, String, Uri?) -> SourceControl
}

///|
pub(all) struct Debug {
  activeDebugSession : DebugSession?
  activeDebugConsole : DebugConsole
  breakpoints : Array[Breakpoint]
  activeStackItem : Union2[DebugThread, DebugStackFrame]?
  onDidChangeActiveDebugSession : Event[DebugSession?]
  onDidStartDebugSession : Event[DebugSession]
  onDidReceiveDebugSessionCustomEvent : Event[DebugSessionCustomEvent]
  onDidTerminateDebugSession : Event[DebugSession]
  onDidChangeBreakpoints : Event[BreakpointsChangeEvent]
  onDidChangeActiveStackItem : Event[Union2[DebugThread, DebugStackFrame]?]
  registerDebugConfigurationProvider : (
    String,
    DebugConfigurationProvider,
    DebugConfigurationProviderTriggerKind?,
  ) -> Disposable
  registerDebugAdapterDescriptorFactory : (
    String,
    DebugAdapterDescriptorFactory,
  ) -> Disposable
  registerDebugAdapterTrackerFactory : (String, DebugAdapterTrackerFactory) -> Disposable
  startDebugging : (WorkspaceFolder?, DebugConfiguration, DebugSessionOptions?) -> Thenable[
    Bool,
  ]
  stopDebugging : (DebugSession?) -> Thenable[Unit]
  addBreakpoints : (Array[Breakpoint]) -> Unit
  removeBreakpoints : (Array[Breakpoint]) -> Unit
  asDebugSourceUri : (DebugProtocolSource, DebugSession?) -> Uri
}

///|
pub(all) struct Extensions {
  all : Array[Extension]
  onDidChange : Event[Unit]
  getExtension : (String) -> Extension?
}

///|
pub(all) struct Authentication {
  onDidChangeSessions : Event[AuthenticationSessionsChangeEvent]
  getSession : (String, Array[String], AuthenticationGetSessionOptions?) -> Thenable[
    AuthenticationSession?,
  ]
  getAccounts : (String) -> Thenable[
    Array[AuthenticationSessionAccountInformation],
  ]
  registerAuthenticationProvider : (
    String,
    String,
    AuthenticationProvider,
    AuthenticationProviderOptions?,
  ) -> Disposable
}

///|
pub(all) struct L10N {
  bundle : Map[String, String]?
  uri : Uri?
  /// (message : String, ...args : Any) -> String
  t : Func1Rest[String, Any, String]
}

///|
pub(all) struct Tests {
  createTestController : (String, String) -> TestController
}

///|
pub(all) struct Chat {
  createChatParticipant : (String, ChatRequestHandler) -> ChatParticipant
}

///|
pub(all) struct Lm {
  tools : Array[LanguageModelToolInformation]
  onDidChangeChatModels : Event[Unit]
  selectChatModels : (LanguageModelChatSelector?) -> Thenable[
    Array[LanguageModelChat],
  ]
  registerTool : (String, LanguageModelTool) -> Disposable
  invokeTool : (String, LanguageModelToolInvocationOptions, CancellationToken?) -> Thenable[
    LanguageModelToolResult,
  ]
  registerMcpServerDefinitionProvider : (String, McpServerDefinitionProvider) -> Disposable
  registerLanguageModelChatProvider : (String, LanguageModelChatProvider) -> Disposable
}

///|
pub let vscode : Vscode = require("vscode")
