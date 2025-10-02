///|
pub extern "js" fn Uri::file(path : String) -> Uri = "(path) => require('vscode').Uri.file(path)"

///|
pub extern "js" fn Uri::parse(value : String, strict : Bool?) -> Uri = "(value, strict) => require('vscode').Uri.parse(value, strict)"

///|
pub extern "js" fn Uri::joinPath(
  uri : Uri,
  pathSegments : Array[String],
) -> Uri = "(uri, ...pathSegments) => require('vscode').Uri.joinPath(uri, ...pathSegments)"

///|
pub extern "js" fn Uri::from(components : UriComponents) -> Uri = "(components) => require('vscode').Uri.from(components)"

///|
pub extern "js" fn LanguageModelChatMessage::user(
  content : Union2[
    String,
    Array[Union2[LanguageModelTextPart, LanguageModelToolResultPart]],
  ],
  name : String?,
) -> LanguageModelChatMessage = "(content, name) => require('vscode').LanguageModelChatMessage.User(content, name)"

///|
pub extern "js" fn LanguageModelChatMessage::assistant(
  content : Union2[
    String,
    Array[Union2[LanguageModelTextPart, LanguageModelToolResultPart]],
  ],
  name : String?,
) -> LanguageModelChatMessage = "(content, name) => require('vscode').LanguageModelChatMessage.Assistant(content, name)"

///|
pub extern "js" fn LanguageModelError::no_permissions(
  message : String?,
) -> LanguageModelError = "(message) => require('vscode').LanguageModelError.NoPermissions(message)"

///|
pub extern "js" fn LanguageModelError::blocked(
  message : String?,
) -> LanguageModelError = "(message) => require('vscode').LanguageModelError.Blocked(message)"

///|
pub extern "js" fn LanguageModelError::not_found(
  message : String?,
) -> LanguageModelError = "(message) => require('vscode').LanguageModelError.NotFound(message)"

///|
pub extern "js" fn FileSystemError::file_not_found(
  messageOrUri : Union2[String, Uri],
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.FileNotFound(messageOrUri)"

///|
pub extern "js" fn FileSystemError::file_exists(
  messageOrUri : Union2[String, Uri],
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.FileExists(messageOrUri)"

///|
pub extern "js" fn FileSystemError::file_not_a_directory(
  messageOrUri : Union2[String, Uri]?,
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.FileNotADirectory(messageOrUri)"

///|
pub extern "js" fn FileSystemError::file_is_a_directory(
  messageOrUri : Union2[String, Uri]?,
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.FileIsADirectory(messageOrUri)"

///|
pub extern "js" fn FileSystemError::no_permissions(
  messageOrUri : Union2[String, Uri]?,
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.NoPermissions(messageOrUri)"

///|
pub extern "js" fn FileSystemError::unavailable(
  messageOrUri : Union2[String, Uri]?,
) -> FileSystemError = "(messageOrUri) => require('vscode').FileSystemError.Unavailable(messageOrUri)"

///|
pub extern "js" fn CodeActionKind::empty() -> CodeActionKind = "() => (require('vscode').CodeActionKind.Empty)"

///|
pub extern "js" fn CodeActionKind::quick_fix() -> CodeActionKind = "() => (require('vscode').CodeActionKind.QuickFix)"

///|
pub extern "js" fn CodeActionKind::refactor() -> CodeActionKind = "() => (require('vscode').CodeActionKind.Refactor)"

///|
pub extern "js" fn CodeActionKind::refactor_extract() -> CodeActionKind = "() => (require('vscode').CodeActionKind.RefactorExtract)"

///|
pub extern "js" fn CodeActionKind::refactor_inline() -> CodeActionKind = "() => (require('vscode').CodeActionKind.RefactorInline)"

///|
pub extern "js" fn CodeActionKind::refactor_move() -> CodeActionKind = "() => (require('vscode').CodeActionKind.RefactorMove)"

///|
pub extern "js" fn CodeActionKind::refactor_rewrite() -> CodeActionKind = "() => (require('vscode').CodeActionKind.RefactorRewrite)"

///|
pub extern "js" fn CodeActionKind::source() -> CodeActionKind = "() => (require('vscode').CodeActionKind.Source)"

///|
pub extern "js" fn CodeActionKind::source_organize_imports() -> CodeActionKind = "() => (require('vscode').CodeActionKind.SourceOrganizeImports)"

///|
pub extern "js" fn CodeActionKind::source_fix_all() -> CodeActionKind = "() => (require('vscode').CodeActionKind.SourceFixAll)"

///|
pub extern "js" fn CodeActionKind::notebook() -> CodeActionKind = "() => (require('vscode').CodeActionKind.Notebook)"
