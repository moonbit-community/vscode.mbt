///|
pub extern "js" fn TextEditorEdit::replace(
  self : TextEditorEdit,
  location : Any,
  value : String,
) -> Unit = "(self, location, value) => self.replace(location, value)"

///|
pub extern "js" fn TextEditorEdit::insert(
  self : TextEditorEdit,
  location : Position,
  value : String,
) -> Unit = "(self, location, value) => self.insert(location, value)"

///|
pub extern "js" fn TextEditorEdit::delete(
  self : TextEditorEdit,
  location : Any,
) -> Unit = "(self, location) => self.delete(location)"

///|
pub extern "js" fn TextEditorEdit::setEndOfLine(
  self : TextEditorEdit,
  endOfLine : EndOfLine,
) -> Unit = "(self, endOfLine) => self.setEndOfLine(endOfLine)"

///|
pub extern "js" fn TextEditorEdit::replaceRange(
  self : TextEditorEdit,
  range : Range,
  value : String,
) -> Unit = "(self, range, value) => self.replace(range, value)"

///|
pub extern "js" fn TextEditorEdit::replaceSelection(
  self : TextEditorEdit,
  selection : Any,
  value : String,
) -> Unit = "(self, selection, value) => self.replace(selection, value)"

///|
pub extern "js" fn FileSystem::stat(self : FileSystem, uri : Uri) -> Any = "(self, uri) => self.stat(uri)"

///|
pub extern "js" fn FileSystem::readDirectory(
  self : FileSystem,
  uri : Uri,
) -> Any = "(self, uri) => self.readDirectory(uri)"

///|
pub extern "js" fn FileSystem::createDirectory(
  self : FileSystem,
  uri : Uri,
) -> Any = "(self, uri) => self.createDirectory(uri)"

///|
pub extern "js" fn FileSystem::readFile(self : FileSystem, uri : Uri) -> Any = "(self, uri) => self.readFile(uri)"

///|
pub extern "js" fn FileSystem::writeFile(
  self : FileSystem,
  uri : Uri,
  content : Uint8Array,
) -> Any = "(self, uri, content) => self.writeFile(uri, content)"

///|
pub extern "js" fn FileSystem::delete(
  self : FileSystem,
  uri : Uri,
  options? : Any,
) -> Any = "(self, uri, options) => self.delete(uri, options)"

///|
pub extern "js" fn FileSystem::rename(
  self : FileSystem,
  source : Uri,
  target : Uri,
  options? : Any,
) -> Any = "(self, source, target, options) => self.rename(source, target, options)"

///|
pub extern "js" fn FileSystem::copy(
  self : FileSystem,
  source : Uri,
  target : Uri,
  options? : Any,
) -> Any = "(self, source, target, options) => self.copy(source, target, options)"

///|
pub extern "js" fn FileSystem::isWritableFileSystem(
  self : FileSystem,
  scheme : String,
) -> Bool? = "(self, scheme) => self.isWritableFileSystem(scheme)"

///|
pub extern "js" fn WorkspaceConfiguration::get(
  self : WorkspaceConfiguration,
  section : String,
) -> Any? = "(self, section) => self.get(section)"

///|
pub extern "js" fn WorkspaceConfiguration::get_with_default(
  self : WorkspaceConfiguration,
  section : String,
  defaultValue : Any,
) -> Any = "(self, section, defaultValue) => self.get(section, defaultValue)"

///|
pub extern "js" fn WorkspaceConfiguration::inspect(
  self : WorkspaceConfiguration,
  section : String,
) -> WorkspaceConfigurationInspectResult[Any]? = "(self, section) => self.inspect(section)"

///|
pub extern "js" fn WorkspaceConfiguration::update(
  self : WorkspaceConfiguration,
  section : String,
  value : Any,
  configurationTarget : Union2[ConfigurationTarget, Bool]?,
  overrideInLanguage : Bool?,
) -> Thenable[Unit] = "(self, section, value, configurationTarget, overrideInLanguage) => self.update(section, value, configurationTarget, overrideInLanguage)"

///|
pub extern "js" fn WorkspaceConfiguration::has(
  self : WorkspaceConfiguration,
  section : String,
) -> Bool = "(self, section) => self.has(section)"

///|
pub extern "js" fn WorkspaceConfiguration::get_item(
  self : WorkspaceConfiguration,
  key : String,
) -> Any = "(self, key) => self[key]"

///|
pub extern "js" fn SemanticTokensBuilder::build_with_options(
  self : SemanticTokensBuilder,
  resultId : String?,
) -> SemanticTokens = "(self, resultId) => self.build(resultId)"

///|
pub extern "js" fn SemanticTokensBuilder::push(
  self : SemanticTokensBuilder,
  line : Int,
  char : Int,
  length : Int,
  tokenType : Int,
  tokenModifiers : Int?,
) -> Unit = "(self, line, char, length, tokenType, tokenModifiers) => self.push(line, char, length, tokenType, tokenModifiers)"

///|
pub extern "js" fn SemanticTokensBuilder::push_with_range(
  self : SemanticTokensBuilder,
  range : Range,
  tokenType : String,
  tokenModifiers : Array[String]?,
) -> Unit = "(self, range, tokenType, tokenModifiers) => self.push(range, tokenType, tokenModifiers)"
