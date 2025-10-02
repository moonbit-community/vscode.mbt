///|
pub(all) struct Command {
  mut title : String
  mut command : String
  mut tooltip : String?
  mut arguments : Array[Any]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextLine {
  lineNumber : Int
  text : String
  range : Range
  rangeIncludingLineBreak : Range
  firstNonWhitespaceCharacterIndex : Int
  isEmptyOrWhitespace : Bool
}

///|
pub(all) struct TextDocument {
  uri : Uri
  fileName : String
  isUntitled : Bool
  languageId : String
  encoding : String
  version : Int
  isDirty : Bool
  isClosed : Bool
  eol : EndOfLine
  lineCount : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct Position {
  line : Int
  character : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct Range {
  start : Position
  end : Position
  mut isEmpty : Bool
  mut isSingleLine : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct Selection {
  anchor : Position
  active : Position
  /// inherited from `Range`
  start : Position
  /// inherited from `Range`
  end : Position
  /// inherited from `Range`
  isReversed : Bool
  /// inherited from `Range`
  mut isEmpty : Bool
  /// inherited from `Range`
  mut isSingleLine : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct Uri {
  scheme : String
  authority : String
  path : String
  query : String
  fragment : String
  fsPath : String
} derive(Show, Eq, ToJson)

///|
pub struct UriComponents {
  scheme : String
  authority : String?
  path : String?
  query : String?
  fragment : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditor {
  document : TextDocument
  mut selection : Selection
  mut selections : Array[Selection]
  visibleRanges : Array[Range]
  mut options : TextEditorOptions
  viewColumn : ViewColumn?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CancellationToken {
  isCancellationRequested : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct CancellationTokenSource {
  token : CancellationToken
} derive(Show, Eq, ToJson)

///|
pub(all) struct ThemeIcon {
  id : String
  color : ThemeColor?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ThemeColor {
  id : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorOptions {
  mut tabSize : Union2[Int, String]?
  mut indentSize : Union2[Int, String]?
  mut insertSpaces : Union2[Bool, String]?
  mut cursorStyle : TextEditorCursorStyle?
  mut lineNumbers : TextEditorLineNumbersStyle?
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickPickItem {
  mut label : String
  mut kind : QuickPickItemKind?
  mut iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
  mut description : String?
  mut detail : String?
  mut picked : Bool?
  mut alwaysShow : Bool?
  mut buttons : Array[QuickInputButton]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InputBoxValidationMessage {
  message : String
  severity : InputBoxValidationSeverity
}

///|
pub(all) struct MessageItem {
  title : String
  isCloseAffordance : Bool?
}

///|
pub(all) struct DocumentFilter {
  language : String?
  notebookType : String?
  scheme : String?
  pattern : Union2[String, RelativePattern]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Location {
  uri : Uri
  range : Range
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalDimensions {
  columns : Int
  rows : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentDropOrPasteEditKind {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeActionKind {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabGroup {
  isActive : Bool
  viewColumn : ViewColumn
  activeTab : Tab?
  tabs : Array[Tab]
} derive(Show, Eq, ToJson)

///|
pub(all) struct Tab {
  label : String
  group : TabGroup
  input : Union8[
    TabInputText,
    TabInputTextDiff,
    TabInputCustom,
    TabInputWebview,
    TabInputNotebook,
    TabInputNotebookDiff,
    TabInputTerminal,
    Any,
  ]
  isDirty : Bool
  isPinned : Bool
  isPreview : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceFolder {
  uri : Uri
  name : String
  index : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalExitStatus {
  code : Int?
  reason : TerminalExitReason
} derive(Show, Eq, ToJson)

///|
pub(all) struct AccessibilityInformation {
  label : String
  role : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LocationLink {
  mut originSelectionRange : Range?
  mut targetUri : Uri
  mut targetRange : Range
  mut targetSelectionRange : Range?
} derive(Show, Eq, ToJson)

///|
/// For the { light: Uri, dark: Uri } part of IconPath
pub(all) struct LightDarkIconPath {
  light : Uri
  dark : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentRule {
  mut lineComment : String?
  mut blockComment : CharacterPair?
} derive(Show, Eq, ToJson)

///|
pub(all) struct EnterAction {
  mut indentAction : IndentAction
  mut appendText : String?
  mut removeText : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct OnEnterRule {
  mut beforeText : RegExp
  mut afterText : RegExp?
  mut previousLineText : RegExp?
  mut action : EnterAction
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileSystemWatcher {
  ignoreCreateEvents : Bool
  ignoreChangeEvents : Bool
  ignoreDeleteEvents : Bool
  onDidCreate : Event[Uri]
  onDidChange : Event[Uri]
  onDidDelete : Event[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileStat {
  fileType : FileType
  ctime : Int
  mtime : Int
  size : Int
  permissions : FilePermission?
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileSystemError {
  name : String
  message : String
  code : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ConfigurationScopeObj {
  uri : Uri?
  languageId : String
} derive(Show, Eq, ToJson)

///|
pub typealias Union4[Uri, TextDocument, WorkspaceFolder, ConfigurationScopeObj] as ConfigurationScope

///|
pub(all) struct WorkspaceConfigurationInspectResult[T] {
  key : String
  defaultValue : T?
  globalValue : T?
  workspaceValue : T?
  workspaceFolderValue : T?
  defaultLanguageValue : T?
  globalLanguageValue : T?
  workspaceLanguageValue : T?
  workspaceFolderLanguageValue : T?
  languageIds : Array[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageConfiguration {
  mut comments : CommentRule?
  mut brackets : Array[CharacterPair]?
  mut wordPattern : RegExp?
  mut indentationRules : IndentationRule?
  mut onEnterRules : Array[OnEnterRule]?
  mut autoClosingPairs : Array[AutoClosingPair]?
} derive(Show, Eq, ToJson)

///|
pub typealias (String, String) as CharacterPair

///|
pub(all) struct IndentationRule {
  decreaseIndentPattern : RegExp
  increaseIndentPattern : RegExp
  indentNextLinePattern : RegExp?
  unIndentedLinePattern : RegExp?
} derive(Show, Eq, ToJson)

///|
pub(all) struct AutoClosingPair {
  mut open : String
  mut close : String
  mut notIn : Array[SyntaxTokenType]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceEditEntryMetadata {
  needsConfirmation : Bool
  label : String
  description : String?
  iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceEditMetadata {
  isRefactoring : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DataTransferFile {
  name : String
  uri : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DataTransferItem {
  value : Any
} derive(Show, Eq, ToJson)

///|
pub(all) struct DataTransfer {
  items : Array[DataTransferItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileDecoration {
  badge : String?
  tooltip : String?
  color : ThemeColor?
  propagate : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct RelativePattern {
  baseUri : Uri
  base : String
  pattern : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookRange {
  start : Int
  end : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentCellChange {
  document : TextDocument?
  metadata : Any?
  outputs : Array[NotebookCellOutput]?
  executionSummary : NotebookCellExecutionSummary?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellOutput {
  items : Array[NotebookCellOutputItem]
  metadata : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellOutputItem {
  mime : String
  data : Array[Int]
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellExecutionSummary {
  executionOrder : Int?
  success : Bool?
  timing : NotebookCellExecutionTiming?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellExecutionTiming {
  startTime : Int
  endTime : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellData {
  kind : NotebookCellKind
  value : String
  languageId : String
  outputs : Array[NotebookCellOutput]?
  metadata : Any?
  executionSummary : NotebookCellExecutionSummary?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCell {
  index : Int
  kind : NotebookCellKind
  document : TextDocument
  outputs : Array[NotebookCellOutput]
  metadata : Any
  executionSummary : NotebookCellExecutionSummary?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocument {
  uri : Uri
  notebookType : String
  version : Int
  isDirty : Bool
  isUntitled : Bool
  isClosed : Bool
  metadata : Any
  cellCount : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct EnvironmentVariableMutator {
  mutatorType : EnvironmentVariableMutatorType
  value : String
  options : EnvironmentVariableMutatorOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct EnvironmentVariableMutatorOptions {
  applyAtProcessCreation : Bool?
  applyAtShellIntegration : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct StatusBarItem {
  id : String
  alignment : StatusBarAlignment
  priority : Int?
  mut text : String
  mut tooltip : String?
  mut color : String?
  mut backgroundColor : ThemeColor?
  mut command : String?
  mut accessibilityInformation : AccessibilityInformation?
} derive(Show, Eq, ToJson)

///|
pub(all) struct OutputChannel {
  name : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct LogOutputChannel {
  name : String
  logLevel : LogLevel
} derive(Show, Eq, ToJson)

///|
pub(all) struct ProgressOptions {
  location : ProgressLocation
  title : String?
  cancellable : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickInput {
  mut title : String?
  mut step : Int?
  mut totalSteps : Int?
  mut enabled : Bool
  mut busy : Bool
  mut ignoreFocusOut : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickPick {
  mut title : String?
  mut step : Int?
  mut totalSteps : Int?
  mut enabled : Bool
  mut busy : Bool
  mut ignoreFocusOut : Bool
  mut value : String
  mut placeholder : String?
  mut items : Array[QuickPickItem]
  mut canSelectMany : Bool
  mut matchOnDescription : Bool
  mut matchOnDetail : Bool
  mut activeItems : Array[QuickPickItem]
  mut selectedItems : Array[QuickPickItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct InputBox {
  mut title : String?
  mut step : Int?
  mut totalSteps : Int?
  mut enabled : Bool
  mut busy : Bool
  mut ignoreFocusOut : Bool
  mut value : String
  valueSelection : Array[Int]?
  mut placeholder : String?
  mut password : Bool
  mut prompt : String?
  mut validationMessage : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickInputButton {
  iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]
  tooltip : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WindowState {
  focused : Bool
  active : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewPortMapping {
  webviewPort : Int
  extensionHostPort : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewOptions {
  enableScripts : Bool?
  enableForms : Bool?
  enableCommandUris : Bool?
  localResourceRoots : Array[Uri]?
  portMapping : Array[WebviewPortMapping]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Webview {
  mut options : WebviewOptions
  mut html : String
  cspSource : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewPanelOptions {
  enableFindWidget : Bool?
  retainContextWhenHidden : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewPanel {
  viewType : String
  mut title : String
  mut iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
  webview : Webview
  options : WebviewPanelOptions
  active : Bool
  visible : Bool
  viewColumn : ViewColumn?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewView {
  viewType : String
  webview : Webview
  mut title : String?
  mut description : String?
  mut badge : ViewBadge?
  visible : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewViewResolveContext {
  state : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ViewBadge {
  tooltip : String
  value : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControlInputBox {
  value : String
  placeholder : String
  visible : Bool
  enabled : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputText {
  uri : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputTextDiff {
  original : Uri
  modified : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputCustom {
  uri : Uri
  viewType : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputWebview {
  viewType : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputNotebook {
  uri : Uri
  notebookType : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabInputNotebookDiff {
  original : Uri
  modified : Uri
  notebookType : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeItem {
  label : String
  id : String?
  iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
  description : String?
  tooltip : String?
  command : Command?
  collapsibleState : TreeItemCollapsibleState?
  contextValue : String?
  accessibilityInformation : AccessibilityInformation?
  checkboxState : TreeItemCheckboxState?
  resourceUri : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeItemLabel {
  label : String
  highlights : Array[Array[Int]]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeView {
  mut title : String?
  mut description : String?
  mut badge : ViewBadge?
  mut message : String?
  visible : Bool
  selection : Array[Any]
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentThread {
  uri : Uri
  mut range : Range
  mut comments : Array[Comment]
  mut collapsibleState : CommentThreadCollapsibleState
  mut canReply : Bool
  mut contextValue : String?
  mut label : String?
  mut state : CommentThreadState?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Comment {
  mut body : String
  mut mode : CommentMode
  mut author : CommentAuthorInformation
  mut parent : CommentThread?
  mut contextValue : String?
  mut reactions : Array[CommentReaction]?
  mut label : String?
  mut timestamp : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentAuthorInformation {
  mut name : String
  mut iconPath : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentReaction {
  label : String
  iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]
  count : Int
  authorHasReacted : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellStatusBarItem {
  text : String
  alignment : NotebookCellStatusBarAlignment
  priority : Int?
  command : String?
  tooltip : String?
  accessibilityInformation : AccessibilityInformation?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Terminal {
  name : String
  processId : Int?
  creationOptions : TerminalOptions?
  exitStatus : TerminalExitStatus?
  state : TerminalState?
  shellIntegration : TerminalShellIntegration?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalOptions {
  mut name : String?
  mut shellPath : String?
  mut shellArgs : Array[String]?
  mut cwd : String?
  mut env : Array[String]?
  mut strictEnv : Bool?
  mut hideFromUser : Bool?
  mut isTransient : Bool?
  mut location : TerminalLocation?
  mut iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
  mut color : ThemeColor?
  mut message : String?
  mut shellIntegrationNonce : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ExtensionTerminalOptions {
  name : String
  pty : Pseudoterminal
  location : TerminalLocation?
  iconPath : Union3[Uri, LightDarkIconPath, ThemeIcon]?
  color : ThemeColor?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalEditorLocationOptions {
  viewColumn : ViewColumn
  preserveFocus : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalSplitLocationOptions {
  parentTerminal : Terminal
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalState {
  isInteractedWith : Bool
  shell : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellIntegration {
  cwd : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellExecution {
  commandLine : TerminalShellExecutionCommandLine
  cwd : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellExecutionCommandLine {
  value : String
  isTrusted : Bool
  confidence : TerminalShellExecutionCommandLineConfidence
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalLinkContext {
  mut line : String
  mut terminal : Terminal
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalLink {
  mut startIndex : Int
  mut length : Int
  mut tooltip : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalProfile {
  options : TerminalOptions
} derive(Show, Eq, ToJson)

///|
pub(all) struct Extension {
  id : String
  extensionUri : Uri
  extensionPath : String
  isActive : Bool
  packageJSON : Any
  mut extensionKind : ExtensionKind
  exports : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ExtensionContext {
  subscriptions : Array[Disposable]
  workspaceState : Memento
  globalState : Memento
  secrets : SecretStorage
  extensionUri : Uri
  extensionPath : String
  environmentVariableCollection : EnvironmentVariableCollection
  asAbsolutePath : String
  storageUri : Uri?
  storagePath : String?
  globalStorageUri : Uri
  globalStoragePath : String
  logUri : Uri
  logPath : String
  extensionMode : ExtensionMode
  extension : Extension
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskPresentationOptions {
  reveal : TaskRevealKind?
  echo : Bool?
  focus : Bool?
  panel : TaskPanelKind?
  showReuseMessage : Bool?
  clear : Bool?
  group : String?
  close : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskGroup {
  id : String
  label : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskDefinition {
  taskType : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ShellExecution {
  commandLine : String
  options : ShellExecutionOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ShellExecutionOptions {
  executable : String?
  shellArgs : Array[String]?
  shellQuoting : ShellQuoting?
  cwd : String?
  env : Array[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ShellQuotedString {
  value : String
  quoting : ShellQuoting
} derive(Show, Eq, ToJson)

///|
pub(all) struct ProcessExecution {
  process : String
  args : Array[String]?
  options : ProcessExecutionOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ProcessExecutionOptions {
  cwd : String?
  env : Array[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Task {
  definition : TaskDefinition
  scope : TaskScope?
  name : String
  detail : String?
  execution : ShellExecution?
  isBackground : Bool
  source : String
  group : TaskGroup?
  presentationOptions : TaskPresentationOptions?
  runOptions : RunOptions?
  problemMatchers : Array[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct RunOptions {
  reevaluateOnRerun : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskExecution {
  task : Task
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskFilter {
  version : String?
  taskType : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ShellIntegration {
  cwd : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ExtensionHost {
  kind : ExtensionKind
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeActionProviderMetadata {
  providedCodeActionKinds : Array[CodeActionKind]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentSymbolProviderMetadata {
  label : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SignatureHelpProviderMetadata {
  triggerCharacters : Array[String]
  retriggerCharacters : Array[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentDropEditProviderMetadata {
  providedDropEditKinds : Array[DocumentDropOrPasteEditKind]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentPasteProviderMetadata {
  providedPasteEditKinds : Array[DocumentDropOrPasteEditKind]
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationProviderInformation {
  id : String
  label : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationProviderOptions {
  supportsMultipleAccounts : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SemanticTokensLegend {
  tokenTypes : Array[String]
  tokenModifiers : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct SemanticTokens {
  resultId : String?
  data : Array[Int]
} derive(Show, Eq, ToJson)

///|
pub(all) struct SemanticTokensEdit {
  start : Int
  deleteCount : Int
  data : Array[Int]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SemanticTokensEdits {
  resultId : String?
  edits : Array[SemanticTokensEdit]
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentLink {
  range : Range
  target : Uri?
  tooltip : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct Color {
  red : Double
  green : Double
  blue : Double
  alpha : Double
} derive(Show, Eq, ToJson)

///|
pub(all) struct ColorInformation {
  range : Range
  color : Color
} derive(Show, Eq, ToJson)

///|
pub(all) struct ColorPresentation {
  label : String
  textEdit : TextEdit?
  additionalTextEdits : Array[TextEdit]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentColorContext {
  document : TextDocument
  range : Range
} derive(Show, Eq, ToJson)

///|
pub(all) struct PasteContext {
  triggerKind : DocumentPasteTriggerKind
} derive(Show, Eq, ToJson)

///|
// Union type for inline values
pub typealias Union3[
  InlineValueText,
  InlineValueVariableLookup,
  InlineValueEvaluatableExpression,
] as InlineValue

///|
// Union type for MCP server definitions
pub typealias Union2[McpStdioServerDefinition, McpHttpServerDefinition] as McpServerDefinition

///|
pub(all) struct FoldingRange {
  start : Int
  end : Int
  kind : FoldingRangeKind?
  collapsedText : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SelectionRange {
  range : Range
  parent : SelectionRange?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CallHierarchyItem {
  name : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  detail : String?
  uri : Uri
  range : Range
  selectionRange : Range
  data : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CallHierarchyIncomingCall {
  from : CallHierarchyItem
  fromRanges : Array[Range]
} derive(Show, Eq, ToJson)

///|
pub(all) struct CallHierarchyOutgoingCall {
  to : CallHierarchyItem
  fromRanges : Array[Range]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TypeHierarchyItem {
  name : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  detail : String?
  uri : Uri
  range : Range
  selectionRange : Range
  data : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LinkedEditingRanges {
  ranges : Array[Range]
  wordPattern : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct FormattingOptions {
  tabSize : Int
  insertSpaces : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentDropEdit {
  title : String?
  kind : DocumentDropOrPasteEditKind?
  insertText : String
  additionalEdit : WorkspaceEdit?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentPasteEdit {
  title : String
  kind : DocumentDropOrPasteEditKind?
  insertText : String
  additionalEdit : WorkspaceEdit?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentPasteEditContext {
  only : DocumentDropOrPasteEditKind?
  triggerKind : DocumentPasteTriggerKind
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageStatusItem {
  id : String
  name : String
  selector : Array[DocumentFilter]
  severity : LanguageStatusSeverity
  text : String
  detail : String?
  busy : Bool
  command : Command?
  accessibilityInformation : AccessibilityInformation?
} derive(Show, Eq, ToJson)

///|
pub(all) struct EvaluatableExpression {
  range : Range
  expression : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineValueText {
  range : Range
  text : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineValueVariableLookup {
  range : Range
  variableName : String?
  caseSensitiveLookup : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineValueEvaluatableExpression {
  range : Range
  expression : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineValueContext {
  frameId : Int
  stoppedLocation : Range
} derive(Show, Eq, ToJson)

///|
pub(all) struct RenameProviderPrepareResult {
  range : Range
  placeholder : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorSelectionChangeEvent {
  textEditor : TextEditor
  selections : Array[Selection]
  kind : TextEditorSelectionChangeKind?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorVisibleRangesChangeEvent {
  textEditor : TextEditor
  visibleRanges : Array[Range]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorOptionsChangeEvent {
  textEditor : TextEditor
  options : TextEditorOptions
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorViewColumnChangeEvent {
  textEditor : TextEditor
  viewColumn : ViewColumn
} derive(Show, Eq, ToJson)

///|
pub(all) struct DiagnosticChangeEvent {
  uris : Array[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextDocumentContentChangeEvent {
  range : Range
  rangeOffset : Int
  rangeLength : Int
  text : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextDocumentChangeEvent {
  document : TextDocument
  contentChanges : Array[TextDocumentContentChangeEvent]
  reason : TextDocumentChangeReason?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextDocumentWillSaveEvent {
  document : TextDocument
  reason : TextDocumentSaveReason
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileWillCreateEvent {
  token : CancellationToken
  files : Array[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileCreateEvent {
  files : Array[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileWillDeleteEvent {
  token : CancellationToken
  files : Array[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileDeleteEvent {
  files : Array[Uri]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileRenameEntry {
  oldUri : Uri
  newUri : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileWillRenameEvent {
  token : CancellationToken
  files : Array[FileRenameEntry]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileRenameEvent {
  files : Array[FileRenameEntry]
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileChangeEvent {
  changeType : FileChangeType
  uri : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceFoldersChangeEvent {
  added : Array[WorkspaceFolder]
  removed : Array[WorkspaceFolder]
} derive(Show, Eq, ToJson)

///|
pub(all) struct SecretStorageChangeEvent {
  key : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabChangeEvent {
  opened : Array[Tab]
  closed : Array[Tab]
  changed : Array[Tab]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabGroupChangeEvent {
  opened : Array[TabGroup]
  closed : Array[TabGroup]
  changed : Array[TabGroup]
} derive(Show, Eq, ToJson)

///|
pub(all) struct CompletionItemLabel {
  label : String
  detail : String?
  description : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CompletionItemRange {
  inserting : Range
  replacing : Range
} derive(Show, Eq, ToJson)

///|
pub(all) struct CompletionItem {
  mut label : Union2[String, CompletionItemLabel]
  mut kind : CompletionItemKind?
  mut tags : Array[CompletionItemTag]?
  mut detail : String?
  mut documentation : Union2[String, MarkdownString]?
  mut sortText : String?
  mut filterText : String?
  mut preselect : Bool?
  mut insertText : Union2[String, SnippetString]?
  mut range : Union2[Range, CompletionItemRange]?
  mut commitCharacters : Array[String]?
  mut keepWhitespace : Bool?
  mut textEdit : TextEdit?
  mut additionalTextEdits : Array[TextEdit]?
  mut command : Command?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CompletionList {
  isIncomplete : Bool?
  items : Array[CompletionItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct CompletionContext {
  triggerKind : CompletionTriggerKind
  triggerCharacter : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineCompletionItem {
  insertText : String
  filterText : String?
  range : Range?
  command : Command?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineCompletionList {
  items : Array[InlineCompletionItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlineCompletionContext {
  triggerKind : InlineCompletionTriggerKind
  selectedCompletionInfo : SelectedCompletionInfo?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SelectedCompletionInfo {
  range : Range
  text : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ParameterInformation {
  label : String
  documentation : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SignatureInformation {
  label : String
  documentation : String?
  parameters : Array[ParameterInformation]
  activeParameter : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SignatureHelp {
  signatures : Array[SignatureInformation]
  activeSignature : Int
  activeParameter : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct SignatureHelpContext {
  triggerKind : SignatureHelpTriggerKind
  triggerCharacter : String?
  isRetrigger : Bool
  activeSignatureHelp : SignatureHelp?
} derive(Show, Eq, ToJson)

///|
pub(all) struct MarkdownString {
  value : String
  isTrusted : Bool?
  supportThemeIcons : Bool?
  supportHtml : Bool?
  baseUri : Uri?
} derive(Show, Eq, ToJson)

///|
pub(all) struct MarkedStringObject {
  language : String
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct Hover {
  contents : Array[Union2[MarkdownString, Union2[String, MarkedStringObject]]]
  range : Range?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentSymbol {
  name : String
  detail : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  range : Range
  selectionRange : Range
  children : Array[DocumentSymbol]
} derive(Show, Eq, ToJson)

///|
pub(all) struct SymbolInformation {
  name : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  location : Location
  containerName : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlayHintLabelPart {
  value : String
  tooltip : String?
  location : Location?
  command : Command?
} derive(Show, Eq, ToJson)

///|
pub(all) struct InlayHint {
  position : Position
  label : Union2[String, Array[InlayHintLabelPart]]
  tooltip : Union2[String, MarkdownString]?
  kind : InlayHintKind?
  textEdits : Array[TextEdit]?
  paddingLeft : Bool?
  paddingRight : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEdit {
  range : Range
  newText : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct SnippetString {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ReferenceContext {
  includeDeclaration : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct DocumentHighlight {
  range : Range
  kind : DocumentHighlightKind?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeLens {
  range : Range
  command : Command?
  isResolved : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeAction {
  mut title : String
  mut kind : CodeActionKind?
  mut diagnostics : Array[Diagnostic]?
  mut isPreferred : Bool?
  mut disabled : Bool?
  mut edit : WorkspaceEdit?
  mut command : Command?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeActionContext {
  triggerKind : CodeActionTriggerKind
  diagnostics : Array[Diagnostic]
  only : CodeActionKind?
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceEdit {
  size : Int
  // Note: WorkspaceEdit in TypeScript is primarily a class with methods
  // This struct represents the serializable state
} derive(Show, Eq, ToJson)

///|
pub(all) struct DiagnosticCode {
  value : Union2[String, Int]
  target : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct Diagnostic {
  range : Range
  message : String
  severity : DiagnosticSeverity
  source : String?
  code : Union3[String, Int, DiagnosticCode]?
  tags : Array[DiagnosticTag]?
  relatedInformation : Array[DiagnosticRelatedInformation]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DiagnosticRelatedInformation {
  location : Location
  message : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatRequestTurn {
  prompt : String
  participant : String
  references : Array[ChatPromptReference]
  location : Location?
  attempt : Int
  enableCommandDetection : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseTurn {
  response : Array[ChatResponsePart]
  result : ChatResult?
  participant : String
  command : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponsePart {
  partType : String
  content : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatContext {
  history : Array[ChatRequestTurn]
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatErrorDetails {
  message : String
  responseIsFiltered : Bool?
  responseIsIncomplete : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResult {
  errorDetails : ChatErrorDetails?
  metadata : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResultFeedback {
  result : ChatResult
  kind : ChatResultFeedbackKind
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatFollowup {
  prompt : String
  label : String?
  tooltip : String?
  command : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatParticipant {
  id : String
  iconPath : String?
  requestHandler : String?
  followupProvider : ChatFollowupProvider?
  description : String?
  fullName : String?
  isSticky : Bool?
  sampleRequest : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatPromptReference {
  id : String
  range : Array[Int]?
  modelDescription : String?
  value : Any
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatRequest {
  prompt : String
  command : String?
  references : Array[ChatPromptReference]
  location : Location?
  attempt : Int
  enableCommandDetection : Bool
  model : LanguageModelChat
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseMarkdownPart {
  value : MarkdownString
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseFileTree {
  name : String
  children : Array[ChatResponseFileTree]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseFileTreePart {
  value : Array[ChatResponseFileTree]
  baseUri : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseAnchorPart {
  value : Uri
  title : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseProgressPart {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseReferencePart {
  value : Uri
  iconPath : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatResponseCommandButtonPart {
  value : Command
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatMessage {
  role : LanguageModelChatMessageRole
  content : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatResponse {
  stream : Array[String]
  text : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChat {
  name : String
  id : String
  vendor : String
  family : String
  version : String
  maxInputTokens : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatSelector {
  vendor : String?
  family : String?
  version : String?
  id : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelError {
  message : String
  code : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatRequestOptions {
  justification : String?
  modelOptions : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatInformation {
  id : String
  name : String
  vendor : String
  family : String
  version : String
  maxInputTokens : Int?
  targetModels : Array[LanguageModelChatSelector]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatRequestMessage {
  role : LanguageModelChatMessageRole
  content : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatTool {
  name : String
  description : String
  parametersSchema : Any?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolCallPart {
  callId : String
  name : String
  input : Any
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolResultPart {
  callId : String
  content : Array[LanguageModelTextPart]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelTextPart {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelPromptTsxPart {
  value : Any
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolResult {
  content : Array[LanguageModelTextPart]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolInvocationOptions {
  toolInvocationToken : String?
  input : Any
  tokenizationOptions : LanguageModelToolTokenizationOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolTokenizationOptions {
  tokenBudget : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolInformation {
  name : String
  description : String
  parametersSchema : Any?
  tags : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelTool {
  name : String
  description : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelToolConfirmationMessages {
  title : String
  message : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ChatLanguageModelToolReference {
  name : String
  range : Array[Int]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileSystemProvider {
  onDidChangeFile : Event[Array[FileChangeEvent]]
  // Methods: watch, stat, readDirectory, createDirectory, readFile, writeFile, delete, rename, copy
} derive(Show, Eq, ToJson)

///|
pub(all) struct EnvironmentVariableCollection {
  mut persistent : Bool
  mut description : Union2[String, MarkdownString]?
  // Methods: replace, append, prepend, get, forEach, delete, clear
} derive(Show, Eq, ToJson)

///|
pub(all) struct Pseudoterminal {
  onDidWrite : Event[String]
  onDidOverrideDimensions : Event[TerminalDimensions?]?
  onDidClose : Event[Union2[Unit, Int]?]? // Event<void | number>
  onDidChangeName : Event[String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SecretStorage {
  onDidChange : Event[SecretStorageChangeEvent]
  // Methods: get, store, delete
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextDocumentContentProvider {
  onDidChange : Event[Uri]?
  // Methods: provideTextDocumentContent
} derive(Show, Eq, ToJson)

///|
pub(all) struct CodeLensProvider {
  onDidChangeCodeLenses : Event[Unit]?
  provide_code_lenses : (TextDocument, CancellationToken) -> ProviderResult[
    Array[CodeLens],
  ]
  resolve_code_lens : (CodeLens, CancellationToken) -> ProviderResult[CodeLens]
}

///|
pub(all) struct FoldingRangeProvider {
  onDidChangeFoldingRanges : Event[Unit]?
  provide_folding_ranges : (TextDocument, FoldingContext, CancellationToken) -> ProviderResult[
    Array[FoldingRange],
  ]
}

///|
pub(all) struct LanguageModelAccessInformation {
  onDidChange : Event[Unit]
} derive(Show, Eq, ToJson)

// ====== Missing Types from TypeScript Definitions ======

///|
pub(all) struct AuthenticationGetSessionOptions {
  clearSessionPreference : Bool?
  createIfNone : Union2[Bool, AuthenticationGetSessionPresentationOptions]?
  forceNewSession : Union3[
    Bool,
    AuthenticationGetSessionPresentationOptions,
    AuthenticationForceNewSessionOptions,
  ]?
  silent : Bool?
  account : AuthenticationSessionAccountInformation?
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationGetSessionPresentationOptions {
  detail : String?
} derive(Show, Eq, ToJson)

///|
// TypeScript: export type AuthenticationForceNewSessionOptions = AuthenticationGetSessionPresentationOptions
pub typealias AuthenticationGetSessionPresentationOptions as AuthenticationForceNewSessionOptions

///|
pub(all) struct AuthenticationProviderAuthenticationSessionsChangeEvent {
  added : Array[AuthenticationSession]?
  removed : Array[AuthenticationSession]?
  changed : Array[AuthenticationSession]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationProviderSessionOptions {
  account : AuthenticationSessionAccountInformation?
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationSession {
  id : String
  accessToken : String
  account : AuthenticationSessionAccountInformation
  scopes : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationSessionAccountInformation {
  id : String
  label : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct AuthenticationSessionsChangeEvent {
  provider : AuthenticationProviderInformation
} derive(Show, Eq, ToJson)

///|
pub(all) struct Breakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct BreakpointsChangeEvent {
  added : Array[Breakpoint]
  removed : Array[Breakpoint]
  changed : Array[Breakpoint]
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugConfiguration {
  sessionType : String // 'type' is a keyword 
  name : String
  request : String
  // Additional properties via index signature [key: string]: any
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugSession {
  id : String
  sessionType : String // 'type' is a keyword in MoonBit
  parentSession : DebugSession?
  mut name : String
  workspaceFolder : WorkspaceFolder?
  configuration : DebugConfiguration
  // Methods: customRequest, getDebugProtocolBreakpoint
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugSessionCustomEvent {
  session : DebugSession
  event : String
  body : Any
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugSessionOptions {
  parentSession : DebugSession?
  lifecycleManagedByParent : Bool?
  consoleMode : DebugConsoleMode?
  noDebug : Bool?
  compact : Bool?
  suppressSaveBeforeStart : Bool?
  suppressDebugToolbar : Bool?
  suppressDebugStatusbar : Bool?
  suppressDebugView : Bool?
  testRun : TestRun?
} derive(Show, Eq, ToJson)

///|
pub(all) struct FileCoverage {
  uri : Uri
  mut statementCoverage : TestCoverageCount
  mut branchCoverage : TestCoverageCount?
  mut declarationCoverage : TestCoverageCount?
  mut includesTests : Array[TestItem]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct FunctionBreakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
  functionName : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct InputBoxOptions {
  title : String?
  value : String?
  valueSelection : (Int, Int)? // [number, number] tuple
  prompt : String?
  placeHolder : String?
  password : Bool?
  ignoreFocusOut : Bool?
  // Note: validateInput function omitted as it's a callback
} derive(Show, Eq, ToJson)

///|
pub(all) struct LanguageModelChatProvider {
  onDidChangeLanguageModelChatInformation : Event[Unit]?
  provide_language_model_chat_information : (
    PrepareLanguageModelChatModelOptions,
    CancellationToken,
  ) -> ProviderResult[Array[LanguageModelChatInformation]]
  provide_language_model_chat_response : (
    LanguageModelChatInformation,
    Array[LanguageModelChatRequestMessage],
    ProvideLanguageModelChatResponseOptions,
    Progress[LanguageModelResponsePart],
    CancellationToken,
  ) -> Thenable[Unit]
  provide_token_count : (
    LanguageModelChatInformation,
    Union2[String, LanguageModelChatRequestMessage],
    CancellationToken,
  ) -> Thenable[Int]
}

///|
pub(all) struct LanguageModelToolInvocationPrepareOptions {
  input : Any // Generic T
} derive(Show, Eq, ToJson)

///|
pub(all) struct MessageOptions {
  mut modal : Bool?
  mut detail : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct OpenDialogOptions {
  mut defaultUri : Uri?
  openLabel : String?
  canSelectFiles : Bool?
  canSelectFolders : Bool?
  canSelectMany : Bool?
  filters : Map[String, Array[String]]? // { [name: string]: string[] }
  title : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct PreparedToolInvocation {
  invocationMessage : Union2[String, MarkdownString]?
  confirmationMessages : LanguageModelToolConfirmationMessages?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ProvideLanguageModelChatResponseOptions {
  modelOptions : Map[String, Any]? // { readonly [name: string]: any }
  tools : Array[LanguageModelChatTool]?
  toolMode : LanguageModelChatToolMode
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickPickOptions {
  title : String?
  matchOnDescription : Bool?
  matchOnDetail : Bool?
  placeHolder : String?
  ignoreFocusOut : Bool?
  canPickMany : Bool?
  // Note: onDidSelectItem callback omitted
} derive(Show, Eq, ToJson)

///|
pub(all) struct SaveDialogOptions {
  mut defaultUri : Uri?
  mut saveLabel : String?
  mut filters : Map[String, Array[String]]? // { [name: string]: string[] }
  mut title : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceBreakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
  location : Location
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestController {
  id : String
  mut label : String
  items : TestItemCollection
  // Methods: createRunProfile, createTestRun, dispose
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestCoverageCount {
  mut covered : Int
  mut total : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestItem {
  id : String
  uri : Uri?
  children : TestItemCollection
  parent : TestItem?
  mut tags : Array[TestTag]
  mut canResolveChildren : Bool
  mut busy : Bool
  mut label : String
  mut description : String?
  mut sortText : String?
  mut range : Range?
  mut error : Union2[String, MarkdownString]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestItemCollection {
  size : Int
  // Methods: replace, forEach, add, delete, get, iterator support
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestMessage {
  mut message : Union2[String, MarkdownString]
  mut expectedOutput : String?
  mut actualOutput : String?
  mut location : Location?
  mut contextValue : String?
  mut stackTrace : Array[TestMessageStackFrame]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestMessageStackFrame {
  mut uri : Uri?
  mut position : Position?
  mut label : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestRun {
  name : String?
  token : CancellationToken
  isPersisted : Bool
  onDidDispose : Event[Unit]
  // Methods: enqueued, started, skipped, failed, errored, passed, appendOutput, addCoverage, end
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestRunProfile {
  mut label : String
  kind : TestRunProfileKind
  mut isDefault : Bool
  onDidChangeDefault : Event[Bool]
  mut supportsContinuousRun : Bool
  // Methods: runHandler, dispose, and others...
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestRunRequest {
  include : Array[TestItem]?
  exclude : Array[TestItem]?
  profile : TestRunProfile?
  continuous : Bool?
  preserveFocus : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct TestTag {
  id : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct WorkspaceFolderPickOptions {
  placeHolder : String?
  ignoreFocusOut : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) enum ChatParticipantToolToken {} derive(Show, Eq, ToJson)

///|
pub typealias (ChatRequest, ChatContext, ChatResponseStream, CancellationToken) -> ProviderResult[
  Union2[ChatResult, Unit],
] as ChatRequestHandler

///|
pub typealias Union4[
  DebugAdapterExecutable,
  DebugAdapterServer,
  DebugAdapterNamedPipeServer,
  DebugAdapterInlineImplementation,
] as DebugAdapterDescriptor

///|
pub typealias Union3[Location, Array[Location], Array[LocationLink]] as Declaration

///|
pub typealias Union3[
  DocumentFilter,
  String,
  Array[Union2[DocumentFilter, String]],
] as DocumentSelector

///|
pub typealias Union2[StatementCoverage, DeclarationCoverage] as FileCoverageDetail

///|
pub typealias Union2[String, RelativePattern] as GlobPattern

///|
pub typealias Union3[Uri, LightDarkIconPath, ThemeIcon] as IconPath

///|
pub typealias Union3[
  LanguageModelTextPart,
  LanguageModelToolResultPart,
  LanguageModelToolCallPart,
] as LanguageModelInputPart

///|
pub typealias Union3[
  LanguageModelTextPart,
  LanguageModelToolResultPart,
  LanguageModelToolCallPart,
] as LanguageModelResponsePart

///|
pub typealias Union2[String, MarkedStringObject] as MarkedString

///|
pub(all) struct FoldingContext {
  maxRanges : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct BranchCoverage {
  executionCount : Int
  location : Location?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CancellationError {
  name : String
  message : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct Clipboard {} derive(Show, Eq, ToJson)

///|
pub(all) struct ColorTheme {
  kind : ColorThemeKind
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentController {
  id : String
  label : String
  options : CommentOptions?
  commentingRangeProvider : CommentingRangeProvider?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentOptions {
  prompt : String?
  placeHolder : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentReply {
  thread : CommentThread
  text : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct CommentingRanges {
  ranges : Array[Range]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocument {
  uri : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocumentBackup {
  id : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocumentBackupContext {
  destination : Uri
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocumentContentChangeEvent {
  document : CustomDocument
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocumentEditEvent {
  document : CustomDocument
  label : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct CustomDocumentOpenContext {
  backupId : String?
  untitledDocumentData : Uint8Array?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapter {} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterDescriptorFactory {} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterExecutable {
  command : String
  args : Array[String]
  options : DebugAdapterExecutableOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterExecutableOptions {
  env : Map[String, String]?
  cwd : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterInlineImplementation {
  implementation : DebugAdapter
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterNamedPipeServer {
  path : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterServer {
  port : Int
  host : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterTracker {} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugAdapterTrackerFactory {} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugConsole {} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugProtocolBreakpoint {
  id : Int?
  verified : Bool
  message : String?
  source : DebugProtocolSource?
  line : Int?
  column : Int?
  endLine : Int?
  endColumn : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugProtocolMessage {
  id : Int
  format : String
  variables : Map[String, String]?
  sendTelemetry : Bool?
  showUser : Bool?
  url : String?
  urlLabel : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugProtocolSource {
  name : String?
  path : String?
  sourceReference : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugStackFrame {
  id : String
  label : String
  thread : DebugThread
  source : DebugProtocolSource?
  range : Range
} derive(Show, Eq, ToJson)

///|
pub(all) struct DebugThread {
  id : String
  name : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct DeclarationCoverage {
  executed : Int
  location : Location
} derive(Show, Eq, ToJson)

///|
pub(all) struct DecorationInstanceRenderOptions {
  before : ThemableDecorationAttachmentRenderOptions?
  after : ThemableDecorationAttachmentRenderOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DecorationOptions {
  mut range : Range
  mut hoverMessage : Union3[
    MarkdownString,
    MarkedString,
    Array[Union2[MarkdownString, MarkedString]],
  ]?
  mut renderOptions : DecorationInstanceRenderOptions?
} derive(Show, Eq, ToJson)

///|
/// inherits from ThemableDecorationRenderOptions
pub(all) struct DecorationRenderOptions {
  mut isWholeLine : Bool?
  mut rangeBehavior : DecorationRangeBehavior?
  mut overviewRulerLane : OverviewRulerLane?
  mut light : ThemableDecorationRenderOptions?
  mut dark : ThemableDecorationRenderOptions?
  mut backgroundColor : String?
  mut outline : String?
  mut outlineColor : String?
  mut outlineStyle : String?
  mut outlineWidth : String?
  mut border : String?
  mut borderColor : String?
  mut borderRadius : String?
  mut borderSpacing : String?
  mut borderStyle : String?
  mut borderWidth : String?
  mut fontStyle : String?
  mut fontWeight : String?
  mut textDecoration : String?
  mut color : String?
  mut opacity : String?
  mut letterSpacing : String?
  mut gutterIconPath : String?
  mut gutterIconSize : String?
  mut cursor : String?
  mut before : ThemableDecorationAttachmentRenderOptions?
  mut after : ThemableDecorationAttachmentRenderOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct DiagnosticCollection {
  name : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct EnvironmentVariableScope {} derive(Show, Eq, ToJson)

///|
pub(all) struct EventEmitter[T] {
  event : Event[T]
} derive(Show, Eq, ToJson)

///|
pub(all) struct GlobalEnvironmentVariableCollection {
  persistent : Bool
  description : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct McpHttpServerDefinition {
  command : String
  args : Array[String]?
  env : Map[String, String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct McpStdioServerDefinition {
  command : String
  args : Array[String]?
  env : Map[String, String]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookCellExecution {
  cell : NotebookCell
  token : CancellationToken
  mut executionOrder : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookController {
  id : String
  notebookType : String
  supportedLanguages : Array[String]?
  label : String
  description : String?
  detail : String?
  supportsExecutionOrder : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookData {
  cells : Array[NotebookCellData]
  metadata : Map[String, Any]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentChangeEvent {
  notebook : NotebookDocument
  metadata : Map[String, Any]?
  cellChanges : Array[NotebookDocumentCellChange]
  contentChanges : Array[NotebookDocumentContentChange]
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentContentChange {
  range : NotebookRange
  addedCells : Array[NotebookCell]
  removedCells : Array[NotebookCell]
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentContentOptions {
  transientOutputs : Bool?
  transientCellMetadata : Map[String, Bool]?
  transientDocumentMetadata : Map[String, Bool]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentShowOptions {
  viewColumn : ViewColumn?
  preserveFocus : Bool?
  preview : Bool?
  selections : Array[NotebookRange]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookDocumentWillSaveEvent {
  notebook : NotebookDocument
  reason : TextDocumentSaveReason
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookEdit {} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookEditor {
  notebook : NotebookDocument
  selection : NotebookRange
  selections : Array[NotebookRange]
  visibleRanges : Array[NotebookRange]
  viewColumn : ViewColumn?
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookEditorSelectionChangeEvent {
  notebookEditor : NotebookEditor
  selections : Array[NotebookRange]
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookEditorVisibleRangesChangeEvent {
  notebookEditor : NotebookEditor
  visibleRanges : Array[NotebookRange]
} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookRendererMessaging {} derive(Show, Eq, ToJson)

///|
pub(all) struct NotebookSerializer {} derive(Show, Eq, ToJson)

///|
pub(all) struct PrepareLanguageModelChatModelOptions {
  justification : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct QuickPickItemButtonEvent {
  button : QuickInputButton
  item : QuickPickItem
} derive(Show, Eq, ToJson)

///|
pub(all) struct ShellQuotingOptions {
  escape : String?
  strong : String?
  weak : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SnippetTextEdit {
  range : Range
  snippet : SnippetString
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControl {
  id : String
  label : String
  rootUri : Uri?
  inputBox : SourceControlInputBox
  count : Int?
  quickDiffProvider : QuickDiffProvider?
  commitTemplate : String?
  acceptInputCommand : Command?
  statusBarCommands : Array[Command]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControlResourceDecorations {
  strikeThrough : Bool?
  faded : Bool?
  tooltip : String?
  light : SourceControlResourceThemableDecorations?
  dark : SourceControlResourceThemableDecorations?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControlResourceGroup {
  id : String
  label : String
  hideWhenEmpty : Bool?
  resourceStates : Array[SourceControlResourceState]
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControlResourceState {
  resourceUri : Uri
  command : Command?
  decorations : SourceControlResourceDecorations?
  contextValue : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct SourceControlResourceThemableDecorations {
  iconPath : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct StatementCoverage {
  executionCount : Int
  location : Location
} derive(Show, Eq, ToJson)

///|
pub(all) struct TabGroups {
  all : Array[TabGroup]
  activeTabGroup : TabGroup
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskEndEvent {
  execution : TaskExecution
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskProcessEndEvent {
  execution : TaskExecution
  exitCode : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskProcessStartEvent {
  execution : TaskExecution
  processId : Int
} derive(Show, Eq, ToJson)

///|
pub(all) struct TaskStartEvent {
  execution : TaskExecution
} derive(Show, Eq, ToJson)

///|
pub(all) struct TelemetryLogger {
  logLevel : LogLevel
} derive(Show, Eq, ToJson)

///|
pub(all) struct TelemetryLoggerOptions {
  ignoreBuiltInCommonProperties : Bool?
  ignoreUnhandledErrors : Bool?
  additionalCommonProperties : Map[String, Any]?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TelemetrySender {} derive(Show, Eq, ToJson)

///|
pub(all) struct TelemetryTrustedValue {
  value : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellExecutionEndEvent {
  terminal : Terminal
  shellIntegration : TerminalShellIntegration
  execution : TerminalShellExecution
  exitCode : Int?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellExecutionStartEvent {
  terminal : Terminal
  shellIntegration : TerminalShellIntegration
  execution : TerminalShellExecution
} derive(Show, Eq, ToJson)

///|
pub(all) struct TerminalShellIntegrationChangeEvent {
  terminal : Terminal
  shellIntegration : TerminalShellIntegration?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextDocumentShowOptions {
  mut viewColumn : ViewColumn?
  mut preserveFocus : Bool?
  mut preview : Bool?
  mut selection : Range?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TextEditorDecorationType {
  key : String
} derive(Show, Eq, ToJson)

///|
pub(all) struct ThemableDecorationAttachmentRenderOptions {
  mut contentText : String?
  mut contentIconPath : String?
  mut border : String?
  mut borderColor : String?
  mut fontStyle : String?
  mut fontWeight : String?
  mut textDecoration : String?
  mut color : String?
  mut backgroundColor : String?
  mut margin : String?
  mut width : String?
  mut height : String?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ThemableDecorationInstanceRenderOptions {
  before : ThemableDecorationAttachmentRenderOptions?
  after : ThemableDecorationAttachmentRenderOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct ThemableDecorationRenderOptions {
  mut backgroundColor : String?
  mut outline : String?
  mut outlineColor : String?
  mut outlineStyle : String?
  mut outlineWidth : String?
  mut border : String?
  mut borderColor : String?
  mut borderRadius : String?
  mut borderSpacing : String?
  mut borderStyle : String?
  mut borderWidth : String?
  mut fontStyle : String?
  mut fontWeight : String?
  mut textDecoration : String?
  mut color : String?
  mut opacity : String?
  mut letterSpacing : String?
  mut gutterIconPath : String?
  mut gutterIconSize : String?
  mut overviewRulerColor : String?
  mut before : ThemableDecorationAttachmentRenderOptions?
  mut after : ThemableDecorationAttachmentRenderOptions?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeCheckboxChangeEvent {
  items : Array[TreeItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeDragAndDropController {
  dropMimeTypes : Array[String]
  dragMimeTypes : Array[String]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeViewExpansionEvent {
  element : TreeItem
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeViewOptions {
  treeDataProvider : TreeDataProvider[Any]?
  showCollapseAll : Bool?
  canSelectMany : Bool?
  dragAndDropController : TreeDragAndDropController?
  manageCheckboxStateManually : Bool?
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeViewSelectionChangeEvent {
  selection : Array[TreeItem]
} derive(Show, Eq, ToJson)

///|
pub(all) struct TreeViewVisibilityChangeEvent {
  visible : Bool
} derive(Show, Eq, ToJson)

///|
pub(all) struct WebviewPanelOnDidChangeViewStateEvent {
  webviewPanel : WebviewPanel
} derive(Show, Eq, ToJson)

///|
pub typealias FixedArray[Byte] as Uint8Array

///|
pub(all) struct FileSystemProviderOptions {
  isCaseSensitive : Bool?
  isReadonly : Bool?
} derive(Show, Eq, ToJson)
