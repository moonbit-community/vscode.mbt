///|
pub(all) enum SymbolTag {
  Deprecated = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum SignatureHelpTriggerKind {
  Invoke = 1
  TriggerCharacter = 2
  ContentChange = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum CompletionItemKind {
  Text = 0
  Method = 1
  Function = 2
  Constructor = 3
  Field = 4
  Variable = 5
  Class = 6
  Interface = 7
  Module = 8
  Property = 9
  Unit = 10
  Value = 11
  Enum = 12
  Keyword = 13
  Snippet = 14
  Color = 15
  File = 16
  Reference = 17
  Folder = 18
  EnumMember = 19
  Constant = 20
  Struct = 21
  Event = 22
  Operator = 23
  TypeParameter = 24
  User = 25
  Issue = 26
} derive(Show, Eq, ToJson)

///|
pub(all) enum CompletionItemTag {
  Deprecated = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum CompletionTriggerKind {
  Invoke = 0
  TriggerCharacter = 1
  TriggerForIncompleteCompletions = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum InlineCompletionTriggerKind {
  Invoke = 0
  Automatic = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum InlayHintKind {
  Type = 1
  Parameter = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum FoldingRangeKind {
  Comment = 1
  Imports = 2
  Region = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum DocumentPasteTriggerKind {
  Automatic = 0
  PasteAs = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum IndentAction {
  None = 0
  Indent = 1
  IndentOutdent = 2
  Outdent = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum SyntaxTokenType {
  Other = 0
  Comment = 1
  String = 2
  RegEx = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum ConfigurationTarget {
  Global = 1
  Workspace = 2
  WorkspaceFolder = 3
}

///|
pub(all) enum DiagnosticSeverity {
  Error = 0
  Warning = 1
  Information = 2
  Hint = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum DiagnosticTag {
  Unnecessary = 1
  Deprecated = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum LanguageStatusSeverity {
  Information = 0
  Warning = 1
  Error = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum StatusBarAlignment {
  Left = 1
  Right = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TerminalLocation {
  Panel = 1
  Editor = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TerminalShellExecutionCommandLineConfidence {
  Low = 0
  Medium = 1
  High = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum ExtensionKind {
  UI = 1
  Workspace = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum ExtensionMode {
  Production = 1
  Development = 2
  Test = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum ColorThemeKind {
  Light = 1
  Dark = 2
  HighContrast = 3
  HighContrastLight = 4
} derive(Show, Eq, ToJson)

///|
pub(all) enum TaskRevealKind {
  Always = 1
  Silent = 2
  Never = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum TaskPanelKind {
  Shared = 1
  Dedicated = 2
  New = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum ShellQuoting {
  Escape = 1
  Strong = 2
  Weak = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum TaskScope {
  Global = 1
  Workspace = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum FileType {
  Unknown = 0
  File = 1
  Directory = 2
  SymbolicLink = 64
} derive(Show, Eq, ToJson)

///|
pub(all) enum FilePermission {
  Readonly = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum FileChangeType {
  Changed = 1
  Created = 2
  Deleted = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum UIKind {
  Desktop = 1
  Web = 2
}

///|
pub(all) enum LogLevel {
  Off = 0
  Trace = 1
  Debug = 2
  Info = 3
  Warning = 4
  Error = 5
} derive(Show, Eq, ToJson)

///|
pub(all) enum TreeItemCollapsibleState {
  None = 0
  Collapsed = 1
  Expanded = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TreeItemCheckboxState {
  Unchecked = 0
  Checked = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum TerminalExitReason {
  Unknown = 0
  Shutdown = 1
  Process = 2
  User = 3
  Extension = 4
} derive(Show, Eq, ToJson)

///|
pub(all) enum EnvironmentVariableMutatorType {
  Replace = 1
  Append = 2
  Prepend = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum ProgressLocation {
  SourceControl = 1
  Window = 10
  Notification = 15
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextDocumentChangeReason {
  Undo = 1
  Redo = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextDocumentSaveReason {
  Manual = 1
  AfterDelay = 2
  FocusOut = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum NotebookEditorRevealType {
  Default = 0
  InCenter = 1
  InCenterIfOutsideViewport = 2
  AtTop = 3
}

///|
pub(all) enum NotebookCellKind {
  Markup = 1
  Code = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum NotebookControllerAffinity {
  Default = 1
  Preferred = 2
}

///|
pub(all) enum NotebookCellStatusBarAlignment {
  Left = 1
  Right = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum DebugConsoleMode {
  Separate = 0
  MergeWithParent = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum DebugConfigurationProviderTriggerKind {
  Initial = 1
  Dynamic = 2
}

///|
pub(all) enum CommentThreadCollapsibleState {
  Collapsed = 0
  Expanded = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum CommentMode {
  Editing = 0
  Preview = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum CommentThreadState {
  Unresolved = 0
  Resolved = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum TestRunProfileKind {
  Run = 1
  Debug = 2
  Coverage = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum ChatResultFeedbackKind {
  Unhelpful = 0
  Helpful = 1
} derive(Show, Eq, ToJson)

///|
pub(all) enum LanguageModelChatMessageRole {
  User = 1
  Assistant = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum LanguageModelChatToolMode {
  Auto = 1
  Required = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextEditorSelectionChangeKind {
  Keyboard = 1
  Mouse = 2
  Command = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextEditorCursorStyle {
  Line = 1
  Block = 2
  Underline = 3
  LineThin = 4
  BlockOutline = 5
  UnderlineThin = 6
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextEditorLineNumbersStyle {
  Off = 0
  On = 1
  Relative = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum TextEditorRevealType {
  Default = 0
  InCenter = 1
  InCenterIfOutsideViewport = 2
  AtTop = 3
}

///|
pub(all) enum OverviewRulerLane {
  Left = 1
  Center = 2
  Right = 4
  Full = 7
} derive(Show, Eq, ToJson)

///|
pub(all) enum DecorationRangeBehavior {
  OpenOpen = 0
  ClosedClosed = 1
  OpenClosed = 2
  ClosedOpen = 3
} derive(Show, Eq, ToJson)

///|
pub(all) enum InputBoxValidationSeverity {
  Info = 1
  Warning = 2
  Error = 3
}

///|
pub(all) enum CodeActionTriggerKind {
  Invoke = 1
  Automatic = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum DocumentHighlightKind {
  Text = 0
  Read = 1
  Write = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum SymbolKind {
  File = 0
  Module = 1
  Namespace = 2
  Package = 3
  Class = 4
  Method = 5
  Property = 6
  Field = 7
  Constructor = 8
  Enum = 9
  Interface = 10
  Function = 11
  Variable = 12
  Constant = 13
  String = 14
  Number = 15
  Boolean = 16
  Array = 17
  Object = 18
  Key = 19
  Null = 20
  EnumMember = 21
  Struct = 22
  Event = 23
  Operator = 24
  TypeParameter = 25
} derive(Show, Eq, ToJson)

///|
pub(all) enum QuickPickItemKind {
  Separator = 0xFFFFFFFF
  Default = 0
} derive(Show, Eq, ToJson)

///|
pub(all) enum EndOfLine {
  LF = 1
  CRLF = 2
} derive(Show, Eq, ToJson)

///|
pub(all) enum ViewColumn {
  Active = 0xFFFFFFFF
  Beside = 0xFFFFFFFE
  One = 1
  Two = 2
  Three = 3
  Four = 4
  Five = 5
  Six = 6
  Seven = 7
  Eight = 8
  Nine = 9
} derive(Show, Eq, ToJson)
