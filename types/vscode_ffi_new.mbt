///| 
/// TypeScript interfaces in MoonBit can be freely constructed, but 
/// TypeScript classes without constructors in `.d.ts` file cannot be constructed,
/// so we do not provide `new` methods for these classes.
/// 
/// Classes WITHOUT public constructors (no `new` methods provided):
/// - Uri (use Uri.parse(), Uri.file(), Uri.joinPath() static methods)
/// - WorkspaceEdit (no constructor, create instance and use methods)
/// - TaskGroup (use static instances: TaskGroup.Clean, TaskGroup.Build, etc.)
/// - CodeActionKind (use static instances: CodeActionKind.Empty, CodeActionKind.QuickFix, etc.)
/// - DocumentDropOrPasteEditKind (use static instances, private constructor)
/// - DataTransfer (no constructor shown)
/// - QuickInputButtons (use static instances: QuickInputButtons.Back, private constructor)
/// - DebugThread, DebugStackFrame (private constructors, created by debug sessions)
/// - ChatRequestTurn, ChatResponseTurn (private constructors, created by chat API)
/// - LanguageModelError (use static methods: NoPermissions(), Blocked(), NotFound())
/// 
/// All INTERFACES also cannot be constructed (too many to list).
/// Only classes with explicit public constructors have corresponding `new` methods below.

///|
pub extern "js" fn Position::new(line : Int, character : Int) -> Position = "(line, character) => new (require('vscode').Position)(line, character)"

///|
pub extern "js" fn Range::new(start : Position, end : Position) -> Range = "(start, end) => new (require('vscode').Range)(start, end)"

///|
pub extern "js" fn Range::new_with_lines(
  startLine : Int,
  startCharacter : Int,
  endLine : Int,
  endCharacter : Int,
) -> Range = "(startLine, startCharacter, endLine, endCharacter) => new (require('vscode').Range)(startLine, startCharacter, endLine, endCharacter)"

///|
pub extern "js" fn ThemeColor::new(id : String) -> ThemeColor = "(id) => new (require('vscode').ThemeColor)(id)"

///|
pub extern "js" fn ThemeIcon::new(
  id : String,
  color : ThemeColor?,
) -> ThemeIcon = "(id, color) => new (require('vscode').ThemeIcon)(id, color)"

///|
pub extern "js" fn CancellationError::new() -> CancellationError = "() => new (require('vscode').CancellationError)()"

///|
pub extern "js" fn Disposable::new(callOnDispose : Any) -> Disposable = "(callOnDispose) => new (require('vscode').Disposable)(callOnDispose)"

///|
pub extern "js" fn RelativePattern::new(
  base : Union3[WorkspaceFolder, Uri, String],
  pattern : String,
) -> RelativePattern = "(base, pattern) => new (require('vscode').RelativePattern)(base, pattern)"

///|
pub extern "js" fn CodeAction::new(
  title : String,
  kind : CodeActionKind?,
) -> CodeAction = "(title, kind) => new (require('vscode').CodeAction)(title, kind)"

///|
pub extern "js" fn CodeLens::new(range : Range, command : Command?) -> CodeLens = "(range, command) => new (require('vscode').CodeLens)(range, command)"

///|
pub extern "js" fn MarkdownString::new(
  value : String?,
  supportThemeIcons : Bool?,
) -> MarkdownString = "(value, supportThemeIcons) => new (require('vscode').MarkdownString)(value, supportThemeIcons)"

///|
pub extern "js" fn Hover::new(
  contents : Union3[
    MarkdownString,
    MarkedString,
    Array[Union2[MarkdownString, MarkedString]],
  ],
  range : Range?,
) -> Hover = "(contents, range) => new (require('vscode').Hover)(contents, range)"

///|
pub extern "js" fn EvaluatableExpression::new(
  range : Range,
  expression : String?,
) -> Any = "(range, expression) => new (require('vscode').EvaluatableExpression)(range, expression)"

///|
pub extern "js" fn InlineValueText::new(range : Range, text : String) -> Any = "(range, text) => new (require('vscode').InlineValueText)(range, text)"

///|
pub extern "js" fn InlineValueVariableLookup::new(
  range : Range,
  variableName : String?,
  caseSensitiveLookup : Bool?,
) -> Any = "(range, variableName, caseSensitiveLookup) => new (require('vscode').InlineValueVariableLookup)(range, variableName, caseSensitiveLookup)"

///|
pub extern "js" fn InlineValueEvaluatableExpression::new(
  range : Range,
  expression : String?,
) -> Any = "(range, expression) => new (require('vscode').InlineValueEvaluatableExpression)(range, expression)"

///|
pub extern "js" fn DocumentHighlight::new(
  range : Range,
  kind : DocumentHighlightKind?,
) -> DocumentHighlight = "(range, kind) => new (require('vscode').DocumentHighlight)(range, kind)"

///|
pub extern "js" fn SymbolInformation::new(
  name : String,
  kind : SymbolKind,
  containerName : String,
  location : Location,
) -> SymbolInformation = "(name, kind, containerName, location) => new (require('vscode').SymbolInformation)(name, kind, containerName, location)"

///|
pub extern "js" fn SymbolInformation::new_with_range(
  name : String,
  kind : SymbolKind,
  range : Range,
  uri : Uri,
  containerName : String?,
) -> SymbolInformation = "(name, kind, range, uri, containerName) => new (require('vscode').SymbolInformation)(name, kind, range, uri, containerName)"

///|
pub extern "js" fn DocumentSymbol::new(
  name : String,
  detail : String,
  kind : SymbolKind,
  range : Range,
  selectionRange : Range,
) -> DocumentSymbol = "(name, detail, kind, range, selectionRange) => new (require('vscode').DocumentSymbol)(name, detail, kind, range, selectionRange)"

///|
pub extern "js" fn TextEdit::new(range : Range, newText : String) -> TextEdit = "(range, newText) => new (require('vscode').TextEdit)(range, newText)"

///|
pub extern "js" fn SnippetTextEdit::new(range : Range, snippet : Any) -> Any = "(range, snippet) => new (require('vscode').SnippetTextEdit)(range, snippet)"

///|
pub extern "js" fn NotebookEdit::new(range : Any, newCells : Any) -> Any = "(range, newCells) => new (require('vscode').NotebookEdit)(range, newCells)"

///|
pub extern "js" fn SnippetString::new(value : String?) -> SnippetString = "(value) => new (require('vscode').SnippetString)(value)"

///|
pub extern "js" fn SemanticTokensLegend::new(
  tokenTypes : Array[String],
  tokenModifiers : Array[String]?,
) -> SemanticTokensLegend = "(tokenTypes, tokenModifiers) => new (require('vscode').SemanticTokensLegend)(tokenTypes, tokenModifiers)"

///|
pub extern "js" fn SemanticTokensBuilder::new(
  legend : SemanticTokensLegend?,
) -> SemanticTokensBuilder = "(legend) => new (require('vscode').SemanticTokensBuilder)(legend)"

///|
pub extern "js" fn SemanticTokens::new(
  data : Array[Int],
  resultId : String?,
) -> SemanticTokens = "(data, resultId) => new (require('vscode').SemanticTokens)(data, resultId)"

///|
pub extern "js" fn SemanticTokensEdits::new(
  edits : Array[SemanticTokensEdit],
  resultId : String?,
) -> SemanticTokensEdits = "(edits, resultId) => new (require('vscode').SemanticTokensEdits)(edits, resultId)"

///|
pub extern "js" fn SemanticTokensEdit::new(
  start : Int,
  deleteCount : Int,
  data : Array[Int]?,
) -> SemanticTokensEdit = "(start, deleteCount, data) => new (require('vscode').SemanticTokensEdit)(start, deleteCount, data)"

///|
pub extern "js" fn ParameterInformation::new(
  label : Union2[String, (Int, Int)],
  documentation : Union2[String, MarkdownString]?,
) -> ParameterInformation = "(label, documentation) => new (require('vscode').ParameterInformation)(label, documentation)"

///|
pub extern "js" fn SignatureInformation::new(
  label : String,
  documentation : Union2[String, MarkdownString]?,
) -> SignatureInformation = "(label, documentation) => new (require('vscode').SignatureInformation)(label, documentation)"

///|
pub extern "js" fn CompletionItem::new(
  label : Union2[String, CompletionItemLabel],
  kind : CompletionItemKind?,
) -> CompletionItem = "(label, kind) => new (require('vscode').CompletionItem)(label, kind)"

///|
pub extern "js" fn CompletionList::new(
  items : Array[CompletionItem]?,
  isIncomplete : Bool?,
) -> CompletionList = "(items, isIncomplete) => new (require('vscode').CompletionList)(items, isIncomplete)"

///|
pub extern "js" fn InlineCompletionList::new(
  items : Array[InlineCompletionItem],
) -> InlineCompletionList = "(items) => new (require('vscode').InlineCompletionList)(items)"

///|
pub extern "js" fn InlineCompletionItem::new(
  insertText : Union2[String, SnippetString],
  range : Range?,
  command : Command?,
) -> InlineCompletionItem = "(insertText, range, command) => new (require('vscode').InlineCompletionItem)(insertText, range, command)"

///|
pub extern "js" fn DocumentLink::new(
  range : Range,
  target : Uri?,
) -> DocumentLink = "(range, target) => new (require('vscode').DocumentLink)(range, target)"

///|
pub extern "js" fn Color::new(
  red : Double,
  green : Double,
  blue : Double,
  alpha : Double,
) -> Color = "(red, green, blue, alpha) => new (require('vscode').Color)(red, green, blue, alpha)"

///|
pub extern "js" fn ColorInformation::new(range : Range, color : Any) -> Any = "(range, color) => new (require('vscode').ColorInformation)(range, color)"

///|
pub extern "js" fn ColorPresentation::new(label : String) -> ColorPresentation = "(label) => new (require('vscode').ColorPresentation)(label)"

///|
pub extern "js" fn InlayHintLabelPart::new(
  value : String,
) -> InlayHintLabelPart = "(value) => new (require('vscode').InlayHintLabelPart)(value)"

///|
pub extern "js" fn InlayHint::new(
  position : Position,
  label : Union2[String, Array[InlayHintLabelPart]],
  kind : InlayHintKind?,
) -> InlayHint = "(position, label, kind) => new (require('vscode').InlayHint)(position, label, kind)"

///|
pub extern "js" fn FoldingRange::new(
  start : Int,
  end : Int,
  kind : FoldingRangeKind?,
) -> FoldingRange = "(start, end, kind) => new (require('vscode').FoldingRange)(start, end, kind)"

///|
pub extern "js" fn SelectionRange::new(
  range : Range,
  parent : SelectionRange?,
) -> SelectionRange = "(range, parent) => new (require('vscode').SelectionRange)(range, parent)"

///|
pub extern "js" fn CallHierarchyItem::new(
  kind : SymbolKind,
  name : String,
  detail : String,
  uri : Uri,
  range : Range,
  selectionRange : Range,
) -> CallHierarchyItem = "(kind, name, detail, uri, range, selectionRange) => new (require('vscode').CallHierarchyItem)(kind, name, detail, uri, range, selectionRange)"

///|
pub extern "js" fn CallHierarchyIncomingCall::new(
  item : CallHierarchyItem,
  fromRanges : Array[Range],
) -> CallHierarchyIncomingCall = "(item, fromRanges) => new (require('vscode').CallHierarchyIncomingCall)(item, fromRanges)"

///|
pub extern "js" fn CallHierarchyOutgoingCall::new(
  item : CallHierarchyItem,
  fromRanges : Array[Range],
) -> CallHierarchyOutgoingCall = "(item, fromRanges) => new (require('vscode').CallHierarchyOutgoingCall)(item, fromRanges)"

///|
pub extern "js" fn TypeHierarchyItem::new(
  kind : SymbolKind,
  name : String,
  detail : String,
  uri : Uri,
  range : Range,
  selectionRange : Range,
) -> TypeHierarchyItem = "(kind, name, detail, uri, range, selectionRange) => new (require('vscode').TypeHierarchyItem)(kind, name, detail, uri, range, selectionRange)"

///|
pub extern "js" fn LinkedEditingRanges::new(
  ranges : Any,
  wordPattern : Any?,
) -> Any = "(ranges, wordPattern) => new (require('vscode').LinkedEditingRanges)(ranges, wordPattern)"

///|
pub extern "js" fn DocumentDropEdit::new(
  insertText : Any,
  title : String?,
  kind : Any?,
) -> Any = "(insertText, title, kind) => new (require('vscode').DocumentDropEdit)(insertText, title, kind)"

///|
pub extern "js" fn DocumentPasteEdit::new(
  insertText : Any,
  title : String,
  kind : Any,
) -> Any = "(insertText, title, kind) => new (require('vscode').DocumentPasteEdit)(insertText, title, kind)"

///|
pub extern "js" fn Location::new(uri : Uri, rangeOrPosition : Any) -> Location = "(uri, rangeOrPosition) => new (require('vscode').Location)(uri, rangeOrPosition)"

///|
pub extern "js" fn DiagnosticRelatedInformation::new(
  location : Location,
  message : String,
) -> DiagnosticRelatedInformation = "(location, message) => new (require('vscode').DiagnosticRelatedInformation)(location, message)"

///|
pub extern "js" fn Diagnostic::new(
  range : Range,
  message : String,
  severity : DiagnosticSeverity?,
) -> Diagnostic = "(range, message, severity) => new (require('vscode').Diagnostic)(range, message, severity)"

///|
pub extern "js" fn TerminalLink::new(
  startIndex : Int,
  length : Int,
  tooltip : String?,
) -> TerminalLink = "(startIndex, length, tooltip) => new (require('vscode').TerminalLink)(startIndex, length, tooltip)"

///|
pub extern "js" fn TerminalProfile::new(options : Any) -> Any = "(options) => new (require('vscode').TerminalProfile)(options)"

///|
pub extern "js" fn FileDecoration::new(
  badge : String?,
  tooltip : String?,
  color : Any?,
) -> Any = "(badge, tooltip, color) => new (require('vscode').FileDecoration)(badge, tooltip, color)"

///|
pub extern "js" fn ProcessExecution::new(
  process : String,
  options : Any?,
) -> Any = "(process, options) => new (require('vscode').ProcessExecution)(process, options)"

///|
pub extern "js" fn ProcessExecution::new_with_args(
  process : String,
  args : Array[String],
  options : Any?,
) -> Any = "(process, args, options) => new (require('vscode').ProcessExecution)(process, args, options)"

///|
pub extern "js" fn ShellExecution::new(
  commandLine : String,
  options : Any?,
) -> Any = "(commandLine, options) => new (require('vscode').ShellExecution)(commandLine, options)"

///|
pub extern "js" fn ShellExecution::new_with_args(
  command : Any,
  args : Any,
  options : Any?,
) -> Any = "(command, args, options) => new (require('vscode').ShellExecution)(command, args, options)"

///|
pub extern "js" fn CustomExecution::new(callback : Any) -> Any = "(callback) => new (require('vscode').CustomExecution)(callback)"

///|
pub extern "js" fn Task::new(
  taskDefinition : Any,
  scope : Any,
  name : String,
  source : String,
  execution : Any?,
  problemMatchers : Any?,
) -> Any = "(taskDefinition, scope, name, source, execution, problemMatchers) => new (require('vscode').Task)(taskDefinition, scope, name, source, execution, problemMatchers)"

///|
pub extern "js" fn Task::new_simple(
  taskDefinition : Any,
  name : String,
  source : String,
  execution : Any?,
  problemMatchers : Any?,
) -> Any = "(taskDefinition, name, source, execution, problemMatchers) => new (require('vscode').Task)(taskDefinition, name, source, execution, problemMatchers)"

///|
pub extern "js" fn FileSystemError::new(messageOrUri : Any?) -> Any = "(messageOrUri) => new (require('vscode').FileSystemError)(messageOrUri)"

///|
pub extern "js" fn DataTransferItem::new(value : Any) -> Any = "(value) => new (require('vscode').DataTransferItem)(value)"

///|
pub extern "js" fn NotebookRange::new(start : Int, end : Int) -> NotebookRange = "(start, end) => new (require('vscode').NotebookRange)(start, end)"

///|
pub extern "js" fn NotebookCellOutputItem::new(
  data : Any,
  mime : String,
) -> Any = "(data, mime) => new (require('vscode').NotebookCellOutputItem)(data, mime)"

///|
pub extern "js" fn NotebookCellOutput::new(items : Any, metadata : Any?) -> Any = "(items, metadata) => new (require('vscode').NotebookCellOutput)(items, metadata)"

///|
pub extern "js" fn NotebookCellData::new(
  kind : Any,
  value : String,
  languageId : String,
) -> Any = "(kind, value, languageId) => new (require('vscode').NotebookCellData)(kind, value, languageId)"

///|
pub extern "js" fn NotebookData::new(cells : Any) -> Any = "(cells) => new (require('vscode').NotebookData)(cells)"

///|
pub extern "js" fn NotebookCellStatusBarItem::new(
  text : String,
  alignment : Any,
) -> Any = "(text, alignment) => new (require('vscode').NotebookCellStatusBarItem)(text, alignment)"

///|
pub extern "js" fn DebugAdapterExecutable::new(
  command : String,
  args : Array[String]?,
  options : Any?,
) -> Any = "(command, args, options) => new (require('vscode').DebugAdapterExecutable)(command, args, options)"

///|
pub extern "js" fn DebugAdapterServer::new(port : Int, host : String?) -> Any = "(port, host) => new (require('vscode').DebugAdapterServer)(port, host)"

///|
pub extern "js" fn DebugAdapterNamedPipeServer::new(path : String) -> Any = "(path) => new (require('vscode').DebugAdapterNamedPipeServer)(path)"

///|
pub extern "js" fn DebugAdapterInlineImplementation::new(
  implementation : Any,
) -> Any = "(implementation) => new (require('vscode').DebugAdapterInlineImplementation)(implementation)"

///|
pub extern "js" fn Breakpoint::new(
  enabled : Bool?,
  condition : String?,
  hitCondition : String?,
  logMessage : String?,
) -> Any = "(enabled, condition, hitCondition, logMessage) => new (require('vscode').Breakpoint)(enabled, condition, hitCondition, logMessage)"

///|
pub extern "js" fn SourceBreakpoint::new(
  location : Location,
  enabled : Bool?,
  condition : String?,
  hitCondition : String?,
  logMessage : String?,
) -> Any = "(location, enabled, condition, hitCondition, logMessage) => new (require('vscode').SourceBreakpoint)(location, enabled, condition, hitCondition, logMessage)"

///|
pub extern "js" fn FunctionBreakpoint::new(
  functionName : String,
  enabled : Bool?,
  condition : String?,
  hitCondition : String?,
  logMessage : String?,
) -> Any = "(functionName, enabled, condition, hitCondition, logMessage) => new (require('vscode').FunctionBreakpoint)(functionName, enabled, condition, hitCondition, logMessage)"

///|
pub extern "js" fn TestTag::new(id : String) -> TestTag = "(id) => new (require('vscode').TestTag)(id)"

///|
pub extern "js" fn TestRunRequest::new(
  include : Any?,
  exclude : Any?,
  profile : Any?,
  continuous : Bool?,
  preserveFocus : Bool?,
) -> Any = "(include, exclude, profile, continuous, preserveFocus) => new (require('vscode').TestRunRequest)(include, exclude, profile, continuous, preserveFocus)"

///|
pub extern "js" fn TestMessageStackFrame::new(
  label : String,
  uri : Uri?,
  position : Position?,
) -> Any = "(label, uri, position) => new (require('vscode').TestMessageStackFrame)(label, uri, position)"

///|
pub extern "js" fn TestMessage::new(message : Any) -> Any = "(message) => new (require('vscode').TestMessage)(message)"

///|
pub extern "js" fn TestCoverageCount::new(
  covered : Int,
  total : Int,
) -> TestCoverageCount = "(covered, total) => new (require('vscode').TestCoverageCount)(covered, total)"

///|
pub extern "js" fn FileCoverage::new(
  uri : Uri,
  statementCoverage : Any,
  branchCoverage : Any?,
  functionCoverage : Any?,
) -> Any = "(uri, statementCoverage, branchCoverage, functionCoverage) => new (require('vscode').FileCoverage)(uri, statementCoverage, branchCoverage, functionCoverage)"

///|
pub extern "js" fn StatementCoverage::new(
  executed : Any,
  location : Any,
  branches : Any?,
) -> Any = "(executed, location, branches) => new (require('vscode').StatementCoverage)(executed, location, branches)"

///|
pub extern "js" fn BranchCoverage::new(
  executed : Any,
  location : Any?,
  label : String?,
) -> Any = "(executed, location, label) => new (require('vscode').BranchCoverage)(executed, location, label)"

///|
pub extern "js" fn TabInputText::new(uri : Uri) -> TabInputText = "(uri) => new (require('vscode').TabInputText)(uri)"

///|
pub extern "js" fn TabInputTextDiff::new(
  original : Uri,
  modified : Uri,
) -> TabInputTextDiff = "(original, modified) => new (require('vscode').TabInputTextDiff)(original, modified)"

///|
pub extern "js" fn TabInputCustom::new(
  uri : Uri,
  viewType : String,
) -> TabInputCustom = "(uri, viewType) => new (require('vscode').TabInputCustom)(uri, viewType)"

///|
pub extern "js" fn TabInputWebview::new(viewType : String) -> TabInputWebview = "(viewType) => new (require('vscode').TabInputWebview)(viewType)"

///|
pub extern "js" fn TabInputNotebook::new(
  uri : Uri,
  notebookType : String,
) -> Any = "(uri, notebookType) => new (require('vscode').TabInputNotebook)(uri, notebookType)"

///|
pub extern "js" fn TabInputNotebookDiff::new(
  original : Uri,
  modified : Uri,
  notebookType : String,
) -> Any = "(original, modified, notebookType) => new (require('vscode').TabInputNotebookDiff)(original, modified, notebookType)"

///|
pub extern "js" fn TabInputTerminal::new() -> TabInputTerminal = "() => new (require('vscode').TabInputTerminal)()"

///|
pub extern "js" fn TelemetryTrustedValue::new(value : Any) -> Any = "(value) => new (require('vscode').TelemetryTrustedValue)(value)"

///|
pub extern "js" fn ChatResponseMarkdownPart::new(value : Any) -> Any = "(value) => new (require('vscode').ChatResponseMarkdownPart)(value)"

///|
pub extern "js" fn ChatResponseFileTreePart::new(
  value : Any,
  baseUri : Uri,
) -> Any = "(value, baseUri) => new (require('vscode').ChatResponseFileTreePart)(value, baseUri)"

///|
pub extern "js" fn ChatResponseAnchorPart::new(
  value : Any,
  title : String?,
) -> Any = "(value, title) => new (require('vscode').ChatResponseAnchorPart)(value, title)"

///|
pub extern "js" fn ChatResponseProgressPart::new(value : String) -> Any = "(value) => new (require('vscode').ChatResponseProgressPart)(value)"

///|
pub extern "js" fn ChatResponseReferencePart::new(
  value : Any,
  iconPath : Any?,
) -> Any = "(value, iconPath) => new (require('vscode').ChatResponseReferencePart)(value, iconPath)"

///|
pub extern "js" fn ChatResponseCommandButtonPart::new(value : Command) -> Any = "(value) => new (require('vscode').ChatResponseCommandButtonPart)(value)"

///|
pub extern "js" fn LanguageModelChatMessage::new(
  role : Any,
  content : Any,
  name : String?,
) -> Any = "(role, content, name) => new (require('vscode').LanguageModelChatMessage)(role, content, name)"

///|
pub extern "js" fn LanguageModelToolCallPart::new(
  callId : String,
  name : String,
  input : Any,
) -> Any = "(callId, name, input) => new (require('vscode').LanguageModelToolCallPart)(callId, name, input)"

///|
pub extern "js" fn LanguageModelToolResultPart::new(
  callId : String,
  content : Any,
) -> Any = "(callId, content) => new (require('vscode').LanguageModelToolResultPart)(callId, content)"

///|
pub extern "js" fn LanguageModelTextPart::new(
  value : String,
) -> LanguageModelTextPart = "(value) => new (require('vscode').LanguageModelTextPart)(value)"

///|
pub extern "js" fn LanguageModelPromptTsxPart::new(value : Any) -> Any = "(value) => new (require('vscode').LanguageModelPromptTsxPart)(value)"

///|
pub extern "js" fn LanguageModelToolResult::new(content : Any) -> Any = "(content) => new (require('vscode').LanguageModelToolResult)(content)"

///|
pub extern "js" fn Selection::new(
  anchor : Position,
  active : Position,
) -> Selection = "(anchor, active) => new (require('vscode').Selection)(anchor, active)"

///|
pub extern "js" fn Selection::new_with_lines(
  anchorLine : Int,
  anchorCharacter : Int,
  activeLine : Int,
  activeCharacter : Int,
) -> Selection = "(anchorLine, anchorCharacter, activeLine, activeCharacter) => new (require('vscode').Selection)(anchorLine, anchorCharacter, activeLine, activeCharacter)"

///|
pub extern "js" fn TreeItem::new(
  label : String,
  collapsibleState : Any?,
) -> Any = "(label, collapsibleState) => new (require('vscode').TreeItem)(label, collapsibleState)"

///|
pub extern "js" fn TreeItem::new_with_uri(
  resourceUri : Uri,
  collapsibleState : Any?,
) -> Any = "(resourceUri, collapsibleState) => new (require('vscode').TreeItem)(resourceUri, collapsibleState)"

///|
pub extern "js" fn EventEmitter::new() -> EventEmitter[Any] = "() => new (require('vscode').EventEmitter)()"

///|
pub extern "js" fn CancellationTokenSource::new() -> CancellationTokenSource = "() => new (require('vscode').CancellationTokenSource)()"

///|
pub extern "js" fn DeclarationCoverage::new(
  name : String,
  executed : Any,
  location : Any,
) -> Any = "(name, executed, location) => new (require('vscode').DeclarationCoverage)(name, executed, location)"

///|
pub extern "js" fn McpStdioServerDefinition::new(
  label : String,
  command : String,
  args : Array[String]?,
  env : Any?,
  version : String?,
) -> Any = "(label, command, args, env, version) => new (require('vscode').McpStdioServerDefinition)(label, command, args, env, version)"

///|
pub extern "js" fn McpHttpServerDefinition::new(
  label : String,
  uri : Uri,
  headers : Any?,
  version : String?,
) -> Any = "(label, uri, headers, version) => new (require('vscode').McpHttpServerDefinition)(label, uri, headers, version)"

///|
pub extern "js" fn SignatureHelp::new() -> SignatureHelp = "() => new (require('vscode').SignatureHelp)()"

///|
pub extern "js" fn WorkspaceEdit::new() -> WorkspaceEdit = "() => new (require('vscode').WorkspaceEdit)()"
