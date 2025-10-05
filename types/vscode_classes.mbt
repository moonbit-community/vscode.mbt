///|
/// JavaScript Classes can not be directly construct with MoonBit `struct` construct syntax `T::{ ... }`
/// because JavaScript classes require the `new` keyword for instantiation the `prototype` property.
///

///|
pub struct Position {
  line : Int
  character : Int
} derive(Show, Eq, ToJson)

///|
pub struct Range {
  start : Position
  end : Position
  mut isEmpty : Bool
  mut isSingleLine : Bool
} derive(Show, Eq, ToJson)

///|
pub struct Selection {
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
pub struct Uri {
  scheme : String
  authority : String
  path : String
  query : String
  fragment : String
  fsPath : String
} derive(Show, Eq, ToJson)

///|
pub struct CancellationTokenSource {
  token : CancellationToken
} derive(Show, Eq, ToJson)

///|
pub struct ThemeIcon {
  id : String
  color : ThemeColor?
} derive(Show, Eq, ToJson)

///|
pub struct ThemeColor {
  id : String
} derive(Show, Eq, ToJson)

///|
pub struct Location {
  uri : Uri
  range : Range
} derive(Show, Eq, ToJson)

///|
pub struct DocumentDropOrPasteEditKind {
  value : String
} derive(Show, Eq, ToJson)

///|
pub struct CodeActionKind {
  value : String
} derive(Show, Eq, ToJson)

///|
pub struct FileSystemError {
  name : String
  message : String
  code : String
} derive(Show, Eq, ToJson)

///|
pub struct DataTransferItem {
  value : Any
} derive(Show, Eq, ToJson)

///|
pub struct DataTransfer {
  items : Array[DataTransferItem]
} derive(Show, Eq, ToJson)

///|
pub struct FileDecoration {
  badge : String?
  tooltip : String?
  color : ThemeColor?
  propagate : Bool?
} derive(Show, Eq, ToJson)

///|
pub struct RelativePattern {
  baseUri : Uri
  base : String
  pattern : String
} derive(Show, Eq, ToJson)

///|
pub struct NotebookRange {
  start : Int
  end : Int
} derive(Show, Eq, ToJson)

///|
pub struct NotebookCellOutput {
  items : Array[NotebookCellOutputItem]
  metadata : Any?
} derive(Show, Eq, ToJson)

///|
pub struct NotebookCellOutputItem {
  mime : String
  data : Array[Int]
} derive(Show, Eq, ToJson)

///|
pub struct NotebookCellData {
  kind : NotebookCellKind
  value : String
  languageId : String
  outputs : Array[NotebookCellOutput]?
  metadata : Any?
  executionSummary : NotebookCellExecutionSummary?
} derive(Show, Eq, ToJson)

///|
pub struct TabInputText {
  uri : Uri
} derive(Show, Eq, ToJson)

///|
pub struct TabInputTextDiff {
  original : Uri
  modified : Uri
} derive(Show, Eq, ToJson)

///|
pub struct TabInputCustom {
  uri : Uri
  viewType : String
} derive(Show, Eq, ToJson)

///|
pub struct TabInputWebview {
  viewType : String
} derive(Show, Eq, ToJson)

///|
pub struct TabInputNotebook {
  uri : Uri
  notebookType : String
} derive(Show, Eq, ToJson)

///|
pub struct TabInputNotebookDiff {
  original : Uri
  modified : Uri
  notebookType : String
} derive(Show, Eq, ToJson)

///|
pub struct TreeItem {
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
pub struct NotebookCellStatusBarItem {
  text : String
  alignment : NotebookCellStatusBarAlignment
  priority : Int?
  command : String?
  tooltip : String?
  accessibilityInformation : AccessibilityInformation?
} derive(Show, Eq, ToJson)

///|
pub struct TerminalLink {
  mut startIndex : Int
  mut length : Int
  mut tooltip : String?
} derive(Show, Eq, ToJson)

///|
pub struct TerminalProfile {
  options : TerminalOptions
} derive(Show, Eq, ToJson)

///|
pub struct TaskGroup {
  id : String
  label : String
} derive(Show, Eq, ToJson)

///|
pub struct ShellExecution {
  commandLine : String
  options : ShellExecutionOptions?
} derive(Show, Eq, ToJson)

///|
pub struct ProcessExecution {
  process : String
  args : Array[String]?
  options : ProcessExecutionOptions?
} derive(Show, Eq, ToJson)

///|
pub struct Task {
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
pub struct SemanticTokensLegend {
  tokenTypes : Array[String]
  tokenModifiers : Array[String]
} derive(Show, Eq, ToJson)

///|
pub struct SemanticTokens {
  resultId : String?
  data : Array[Int]
} derive(Show, Eq, ToJson)

///|
pub struct SemanticTokensEdit {
  start : Int
  deleteCount : Int
  data : Array[Int]?
} derive(Show, Eq, ToJson)

///|
pub struct SemanticTokensEdits {
  resultId : String?
  edits : Array[SemanticTokensEdit]
} derive(Show, Eq, ToJson)

///|
pub struct DocumentLink {
  range : Range
  target : Uri?
  tooltip : String?
} derive(Show, Eq, ToJson)

///|
pub struct Color {
  red : Double
  green : Double
  blue : Double
  alpha : Double
} derive(Show, Eq, ToJson)

///|
pub struct ColorInformation {
  range : Range
  color : Color
} derive(Show, Eq, ToJson)

///|
pub struct ColorPresentation {
  label : String
  textEdit : TextEdit?
  additionalTextEdits : Array[TextEdit]?
} derive(Show, Eq, ToJson)

///|
pub struct FoldingRange {
  start : Int
  end : Int
  kind : FoldingRangeKind?
  collapsedText : String?
} derive(Show, Eq, ToJson)

///|
pub struct SelectionRange {
  range : Range
  parent : SelectionRange?
} derive(Show, Eq, ToJson)

///|
pub struct CallHierarchyItem {
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
pub struct CallHierarchyIncomingCall {
  from : CallHierarchyItem
  fromRanges : Array[Range]
} derive(Show, Eq, ToJson)

///|
pub struct CallHierarchyOutgoingCall {
  to : CallHierarchyItem
  fromRanges : Array[Range]
} derive(Show, Eq, ToJson)

///|
pub struct TypeHierarchyItem {
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
pub struct LinkedEditingRanges {
  ranges : Array[Range]
  wordPattern : String?
} derive(Show, Eq, ToJson)

///|
pub struct DocumentDropEdit {
  title : String?
  kind : DocumentDropOrPasteEditKind?
  insertText : String
  additionalEdit : WorkspaceEdit?
} derive(Show, Eq, ToJson)

///|
pub struct DocumentPasteEdit {
  title : String
  kind : DocumentDropOrPasteEditKind?
  insertText : String
  additionalEdit : WorkspaceEdit?
} derive(Show, Eq, ToJson)

///|
pub struct EvaluatableExpression {
  range : Range
  expression : String?
} derive(Show, Eq, ToJson)

///|
pub struct InlineValueText {
  range : Range
  text : String
} derive(Show, Eq, ToJson)

///|
pub struct InlineValueVariableLookup {
  range : Range
  variableName : String?
  caseSensitiveLookup : Bool
} derive(Show, Eq, ToJson)

///|
pub struct InlineValueEvaluatableExpression {
  range : Range
  expression : String?
} derive(Show, Eq, ToJson)

///|
pub struct CompletionItem {
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
pub struct CompletionList {
  isIncomplete : Bool?
  items : Array[CompletionItem]
} derive(Show, Eq, ToJson)

///|
pub struct InlineCompletionItem {
  insertText : String
  filterText : String?
  range : Range?
  command : Command?
} derive(Show, Eq, ToJson)

///|
pub struct InlineCompletionList {
  items : Array[InlineCompletionItem]
} derive(Show, Eq, ToJson)

///|
pub struct ParameterInformation {
  label : String
  documentation : String?
} derive(Show, Eq, ToJson)

///|
pub struct SignatureInformation {
  label : String
  documentation : String?
  parameters : Array[ParameterInformation]
  activeParameter : Int?
} derive(Show, Eq, ToJson)

///|
pub struct SignatureHelp {
  signatures : Array[SignatureInformation]
  activeSignature : Int
  activeParameter : Int
} derive(Show, Eq, ToJson)

///|
pub struct MarkdownString {
  value : String
  isTrusted : Bool?
  supportThemeIcons : Bool?
  supportHtml : Bool?
  baseUri : Uri?
} derive(Show, Eq, ToJson)

///|
pub struct Hover {
  contents : Array[Union2[MarkdownString, Union2[String, MarkedStringObject]]]
  range : Range?
} derive(Show, Eq, ToJson)

///|
pub struct DocumentSymbol {
  name : String
  detail : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  range : Range
  selectionRange : Range
  children : Array[DocumentSymbol]
} derive(Show, Eq, ToJson)

///|
pub struct SymbolInformation {
  name : String
  kind : SymbolKind
  tags : Array[SymbolTag]?
  location : Location
  containerName : String?
} derive(Show, Eq, ToJson)

///|
pub struct InlayHintLabelPart {
  value : String
  tooltip : String?
  location : Location?
  command : Command?
} derive(Show, Eq, ToJson)

///|
pub struct InlayHint {
  position : Position
  label : Union2[String, Array[InlayHintLabelPart]]
  tooltip : Union2[String, MarkdownString]?
  kind : InlayHintKind?
  textEdits : Array[TextEdit]?
  paddingLeft : Bool?
  paddingRight : Bool?
} derive(Show, Eq, ToJson)

///|
pub struct TextEdit {
  range : Range
  newText : String
} derive(Show, Eq, ToJson)

///|
pub struct SnippetString {
  value : String
} derive(Show, Eq, ToJson)

///|
pub struct DocumentHighlight {
  range : Range
  kind : DocumentHighlightKind?
} derive(Show, Eq, ToJson)

///|
pub struct CodeLens {
  range : Range
  command : Command?
  isResolved : Bool
} derive(Show, Eq, ToJson)

///|
pub struct CodeAction {
  mut title : String
  mut kind : CodeActionKind?
  mut diagnostics : Array[Diagnostic]?
  mut isPreferred : Bool?
  mut disabled : Bool?
  mut edit : WorkspaceEdit?
  mut command : Command?
} derive(Show, Eq, ToJson)

///|
pub struct WorkspaceEdit {
  size : Int
  // Note: WorkspaceEdit in TypeScript is primarily a class with methods
  // This struct represents the serializable state
} derive(Show, Eq, ToJson)

///|
pub struct Diagnostic {
  range : Range
  message : String
  severity : DiagnosticSeverity
  source : String?
  code : Union3[String, Int, DiagnosticCode]?
  tags : Array[DiagnosticTag]?
  relatedInformation : Array[DiagnosticRelatedInformation]?
} derive(Show, Eq, ToJson)

///|
pub struct DiagnosticRelatedInformation {
  location : Location
  message : String
} derive(Show, Eq, ToJson)

///|
pub struct ChatRequestTurn {
  prompt : String
  participant : String
  references : Array[ChatPromptReference]
  location : Location?
  attempt : Int
  enableCommandDetection : Bool
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseTurn {
  response : Array[ChatResponsePart]
  result : ChatResult?
  participant : String
  command : String?
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseMarkdownPart {
  value : MarkdownString
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseFileTreePart {
  value : Array[ChatResponseFileTree]
  baseUri : Uri
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseAnchorPart {
  value : Uri
  title : String?
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseProgressPart {
  value : String
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseReferencePart {
  value : Uri
  iconPath : String?
} derive(Show, Eq, ToJson)

///|
pub struct ChatResponseCommandButtonPart {
  value : Command
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelChatMessage {
  role : LanguageModelChatMessageRole
  content : Array[String]
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelError {
  message : String
  code : String
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelToolCallPart {
  callId : String
  name : String
  input : Any
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelToolResultPart {
  callId : String
  content : Array[LanguageModelTextPart]
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelTextPart {
  value : String
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelPromptTsxPart {
  value : Any
} derive(Show, Eq, ToJson)

///|
pub struct LanguageModelToolResult {
  content : Array[LanguageModelTextPart]
} derive(Show, Eq, ToJson)

///|
pub struct Breakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
} derive(Show, Eq, ToJson)

///|
pub struct FileCoverage {
  uri : Uri
  mut statementCoverage : TestCoverageCount
  mut branchCoverage : TestCoverageCount?
  mut declarationCoverage : TestCoverageCount?
  mut includesTests : Array[TestItem]?
} derive(Show, Eq, ToJson)

///|
pub struct FunctionBreakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
  functionName : String
} derive(Show, Eq, ToJson)

///|
pub struct SourceBreakpoint {
  id : String
  enabled : Bool
  condition : String?
  hitCondition : String?
  logMessage : String?
  location : Location
} derive(Show, Eq, ToJson)

///|
pub struct TestCoverageCount {
  mut covered : Int
  mut total : Int
} derive(Show, Eq, ToJson)

///|
pub struct TestMessage {
  mut message : Union2[String, MarkdownString]
  mut expectedOutput : String?
  mut actualOutput : String?
  mut location : Location?
  mut contextValue : String?
  mut stackTrace : Array[TestMessageStackFrame]?
} derive(Show, Eq, ToJson)

///|
pub struct TestMessageStackFrame {
  mut uri : Uri?
  mut position : Position?
  mut label : String
} derive(Show, Eq, ToJson)

///|
pub struct TestRunRequest {
  include : Array[TestItem]?
  exclude : Array[TestItem]?
  profile : TestRunProfile?
  continuous : Bool?
  preserveFocus : Bool
} derive(Show, Eq, ToJson)

///|
pub struct TestTag {
  id : String
} derive(Show, Eq, ToJson)

///|
pub struct BranchCoverage {
  executionCount : Int
  location : Location?
} derive(Show, Eq, ToJson)

///|
pub struct CancellationError {
  name : String
  message : String
} derive(Show, Eq, ToJson)

///|
pub struct DebugAdapterExecutable {
  command : String
  args : Array[String]
  options : DebugAdapterExecutableOptions?
} derive(Show, Eq, ToJson)

///|
pub struct DebugAdapterInlineImplementation {
  implementation : DebugAdapter
} derive(Show, Eq, ToJson)

///|
pub struct DebugAdapterNamedPipeServer {
  path : String
} derive(Show, Eq, ToJson)

///|
pub struct DebugAdapterServer {
  port : Int
  host : String?
} derive(Show, Eq, ToJson)

///|
pub struct DebugStackFrame {
  id : String
  label : String
  thread : DebugThread
  source : DebugProtocolSource?
  range : Range
} derive(Show, Eq, ToJson)

///|
pub struct DebugThread {
  id : String
  name : String
} derive(Show, Eq, ToJson)

///|
pub struct DeclarationCoverage {
  executed : Int
  location : Location
} derive(Show, Eq, ToJson)

///|
pub struct EventEmitter[T] {
  event : Event[T]
} derive(Show, Eq, ToJson)

///|
pub struct McpHttpServerDefinition {
  command : String
  args : Array[String]?
  env : Map[String, String]?
} derive(Show, Eq, ToJson)

///|
pub struct McpStdioServerDefinition {
  command : String
  args : Array[String]?
  env : Map[String, String]?
} derive(Show, Eq, ToJson)

///|
pub struct NotebookData {
  cells : Array[NotebookCellData]
  metadata : Map[String, Any]?
} derive(Show, Eq, ToJson)

///|
pub struct NotebookEdit {} derive(Show, Eq, ToJson)

///|
pub struct SnippetTextEdit {
  range : Range
  snippet : SnippetString
} derive(Show, Eq, ToJson)

///|
pub struct StatementCoverage {
  executionCount : Int
  location : Location
} derive(Show, Eq, ToJson)

///|
pub struct TelemetryTrustedValue {
  value : String
} derive(Show, Eq, ToJson)
