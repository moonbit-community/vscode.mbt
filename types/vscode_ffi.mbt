///|
pub extern "js" fn AuthenticationProvider::removeSession(
  self : AuthenticationProvider,
  sessionId : String,
) -> Any = "(self, sessionId) => self.removeSession(sessionId)"

///|
pub extern "js" fn CancellationTokenSource::cancel(
  self : CancellationTokenSource,
) -> Unit = "(self) => self.cancel()"

///|
pub extern "js" fn CancellationTokenSource::dispose(
  self : CancellationTokenSource,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn ChatParticipant::dispose(self : ChatParticipant) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn ChatResponseStream::markdown(
  self : ChatResponseStream,
  value : Any,
) -> Unit = "(self, value) => self.markdown(value)"

///|
pub extern "js" fn ChatResponseStream::anchor_with_options(
  self : ChatResponseStream,
  value : Any,
  title : String?,
) -> Unit = "(self, value, title) => self.anchor(value, title)"

///|
pub extern "js" fn ChatResponseStream::button(
  self : ChatResponseStream,
  command : Command,
) -> Unit = "(self, command) => self.button(command)"

///|
pub extern "js" fn ChatResponseStream::filetree(
  self : ChatResponseStream,
  value : Array[ChatResponseFileTree],
  baseUri : Uri,
) -> Unit = "(self, value, baseUri) => self.filetree(value, baseUri)"

///|
pub extern "js" fn ChatResponseStream::progress(
  self : ChatResponseStream,
  value : String,
) -> Unit = "(self, value) => self.progress(value)"

///|
pub extern "js" fn ChatResponseStream::reference_with_options(
  self : ChatResponseStream,
  value : Any,
  iconPath : IconPath?,
) -> Unit = "(self, value, iconPath) => self.reference(value, iconPath)"

///|
pub extern "js" fn ChatResponseStream::push(
  self : ChatResponseStream,
  part : ChatResponsePart,
) -> Unit = "(self, part) => self.push(part)"

///|
pub extern "js" fn Clipboard::readText(self : Clipboard) -> Any = "(self) => self.readText()"

///|
pub extern "js" fn Clipboard::writeText(
  self : Clipboard,
  value : String,
) -> Any = "(self, value) => self.writeText(value)"

///|
pub extern "js" fn CodeActionKind::append(
  self : CodeActionKind,
  parts : String,
) -> CodeActionKind = "(self, parts) => self.append(parts)"

///|
pub extern "js" fn CodeActionKind::intersects(
  self : CodeActionKind,
  other : CodeActionKind,
) -> Bool = "(self, other) => self.intersects(other)"

///|
pub extern "js" fn CodeActionKind::contains(
  self : CodeActionKind,
  other : CodeActionKind,
) -> Bool = "(self, other) => self.contains(other)"

///|
pub extern "js" fn CodeActionProvider::provideCodeActions(
  self : CodeActionProvider,
  document : TextDocument,
  range : Any,
  context : CodeActionContext,
  token : CancellationToken,
) -> Any = "(self, document, range, context, token) => self.provideCodeActions(document, range, context, token)"

///|
pub extern "js" fn CodeActionProvider::resolveCodeAction(
  self : CodeActionProvider,
  codeAction : Any,
  token : CancellationToken,
) -> Any = "(self, codeAction, token) => self.resolveCodeAction(codeAction, token)"

///|
pub extern "js" fn CodeLensProvider::resolveCodeLens(
  self : CodeLensProvider,
  codeLens : Any,
  token : CancellationToken,
) -> Any = "(self, codeLens, token) => self.resolveCodeLens(codeLens, token)"

///|
pub extern "js" fn CommentController::dispose(self : CommentController) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn CommentThread::dispose(self : CommentThread) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn CompletionItemProvider::provideCompletionItems(
  self : CompletionItemProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
  context : CompletionContext,
) -> Any = "(self, document, position, token, context) => self.provideCompletionItems(document, position, token, context)"

///|
pub extern "js" fn CompletionItemProvider::resolveCompletionItem(
  self : CompletionItemProvider,
  item : Any,
  token : CancellationToken,
) -> Any = "(self, item, token) => self.resolveCompletionItem(item, token)"

///|
pub extern "js" fn ConfigurationChangeEvent::affectsConfiguration_with_options(
  self : ConfigurationChangeEvent,
  section : String,
  scope : ConfigurationScope?,
) -> Bool = "(self, section, scope) => self.affectsConfiguration(section, scope)"

///|
pub extern "js" fn CustomDocument::dispose(self : CustomDocument) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn CustomDocumentBackup::delete(
  self : CustomDocumentBackup,
) -> Unit = "(self) => self.delete()"

///|
pub extern "js" fn CustomDocumentEditEvent::undo(
  self : CustomDocumentEditEvent,
) -> Any = "(self) => self.undo()"

///|
pub extern "js" fn CustomDocumentEditEvent::redo(
  self : CustomDocumentEditEvent,
) -> Any = "(self) => self.redo()"

///|
pub extern "js" fn DataTransfer::get(
  self : DataTransfer,
  mimeType : String,
) -> DataTransferItem? = "(self, mimeType) => self.get(mimeType)"

///|
pub extern "js" fn DataTransfer::set(
  self : DataTransfer,
  mimeType : String,
  value : DataTransferItem,
) -> Unit = "(self, mimeType, value) => self.set(mimeType, value)"

///|
pub extern "js" fn DataTransferFile::data(self : DataTransferFile) -> Any = "(self) => self.data()"

///|
pub extern "js" fn DataTransferItem::asString(self : DataTransferItem) -> Any = "(self) => self.asString()"

///|
pub extern "js" fn DataTransferItem::asFile(
  self : DataTransferItem,
) -> DataTransferFile? = "(self) => self.asFile()"

///|
pub extern "js" fn DebugAdapter::handleMessage(
  self : DebugAdapter,
  message : DebugProtocolMessage,
) -> Unit = "(self, message) => self.handleMessage(message)"

///|
pub extern "js" fn DebugAdapterTracker::onWillStartSession(
  self : DebugAdapterTracker,
) -> Unit = "(self) => self.onWillStartSession()"

///|
pub extern "js" fn DebugAdapterTracker::onWillReceiveMessage(
  self : DebugAdapterTracker,
  message : Any,
) -> Unit = "(self, message) => self.onWillReceiveMessage(message)"

///|
pub extern "js" fn DebugAdapterTracker::onDidSendMessage(
  self : DebugAdapterTracker,
  message : Any,
) -> Unit = "(self, message) => self.onDidSendMessage(message)"

///|
pub extern "js" fn DebugAdapterTracker::onWillStopSession(
  self : DebugAdapterTracker,
) -> Unit = "(self) => self.onWillStopSession()"

///|
pub extern "js" fn DebugAdapterTracker::onError(
  self : DebugAdapterTracker,
  error : Error,
) -> Unit = "(self, error) => self.onError(error)"

///|
pub extern "js" fn DebugAdapterTracker::onExit(
  self : DebugAdapterTracker,
  code : Int?,
  signal : String?,
) -> Unit = "(self, code, signal) => self.onExit(code, signal)"

///|
pub extern "js" fn DebugConsole::append(
  self : DebugConsole,
  value : String,
) -> Unit = "(self, value) => self.append(value)"

///|
pub extern "js" fn DebugConsole::appendLine(
  self : DebugConsole,
  value : String,
) -> Unit = "(self, value) => self.appendLine(value)"

///|
pub extern "js" fn DebugSession::customRequest_with_options(
  self : DebugSession,
  command : String,
  args : Any?,
) -> Any = "(self, command, args) => self.customRequest(command, args)"

///|
pub extern "js" fn DiagnosticCollection::set(
  self : DiagnosticCollection,
  uri : Uri,
  diagnostics : Any,
) -> Unit = "(self, uri, diagnostics) => self.set(uri, diagnostics)"

///|
pub extern "js" fn DiagnosticCollection::set_entries(
  self : DiagnosticCollection,
  entries : Any?,
) -> Unit = "(self, entries) => self.set(entries)"

///|
pub extern "js" fn DiagnosticCollection::delete(
  self : DiagnosticCollection,
  uri : Uri,
) -> Unit = "(self, uri) => self.delete(uri)"

///|
pub extern "js" fn DiagnosticCollection::clear(
  self : DiagnosticCollection,
) -> Unit = "(self) => self.clear()"

///|
pub extern "js" fn DiagnosticCollection::get(
  self : DiagnosticCollection,
  uri : Uri,
) -> Array[Diagnostic]? = "(self, uri) => self.get(uri)"

///|
pub extern "js" fn DiagnosticCollection::has(
  self : DiagnosticCollection,
  uri : Uri,
) -> Bool = "(self, uri) => self.has(uri)"

///|
pub extern "js" fn DiagnosticCollection::dispose(
  self : DiagnosticCollection,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn Disposable::dispose(self : Disposable) -> Any = "(self) => self.dispose()"

///|
pub extern "js" fn DocumentDropOrPasteEditKind::append(
  self : DocumentDropOrPasteEditKind,
  parts : Array[String],
) -> DocumentDropOrPasteEditKind = "(self, parts) => self.append(...parts)"

///|
pub extern "js" fn DocumentDropOrPasteEditKind::intersects(
  self : DocumentDropOrPasteEditKind,
  other : DocumentDropOrPasteEditKind,
) -> Bool = "(self, other) => self.intersects(other)"

///|
pub extern "js" fn DocumentDropOrPasteEditKind::contains(
  self : DocumentDropOrPasteEditKind,
  other : DocumentDropOrPasteEditKind,
) -> Bool = "(self, other) => self.contains(other)"

///|
pub extern "js" fn DocumentLinkProvider::resolveDocumentLink(
  self : DocumentLinkProvider,
  link : Any,
  token : CancellationToken,
) -> Any = "(self, link, token) => self.resolveDocumentLink(link, token)"

///|
pub extern "js" fn EnvironmentVariableCollection::get(
  self : EnvironmentVariableCollection,
  variable : String,
) -> EnvironmentVariableMutator? = "(self, variable) => self.get(variable)"

///|
pub extern "js" fn EnvironmentVariableCollection::delete(
  self : EnvironmentVariableCollection,
  variable : String,
) -> Unit = "(self, variable) => self.delete(variable)"

///|
pub extern "js" fn EnvironmentVariableCollection::clear(
  self : EnvironmentVariableCollection,
) -> Unit = "(self) => self.clear()"

///|
pub extern "js" fn EventEmitter::fire(
  self : EventEmitter[Any],
  data : Any,
) -> Unit = "(self, data) => self.fire(data)"

///|
pub extern "js" fn EventEmitter::dispose(self : EventEmitter[Any]) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn Extension::activate(self : Extension) -> Any = "(self) => self.activate()"

///|
pub extern "js" fn ExtensionContext::dispose(self : ExtensionContext) -> Any = "(self) => self.dispose()"

///|
pub extern "js" fn ExtensionContext::setKeysForSync(
  self : ExtensionContext,
  keys : Any,
) -> Unit = "(self, keys) => self.setKeysForSync(keys)"

///|
pub extern "js" fn ExtensionContext::asAbsolutePath(
  self : ExtensionContext,
  relativePath : String,
) -> String = "(self, relativePath) => self.asAbsolutePath(relativePath)"

///|
pub extern "js" fn FileSystemProvider::stat(
  self : FileSystemProvider,
  uri : Uri,
) -> Any = "(self, uri) => self.stat(uri)"

///|
pub extern "js" fn FileSystemProvider::createDirectory(
  self : FileSystemProvider,
  uri : Uri,
) -> Any = "(self, uri) => self.createDirectory(uri)"

///|
pub extern "js" fn FileSystemProvider::readFile(
  self : FileSystemProvider,
  uri : Uri,
) -> Any = "(self, uri) => self.readFile(uri)"

///|
pub extern "js" fn FileWillCreateEvent::waitUntil_for_WorkspaceEdit(
  self : FileWillCreateEvent,
  thenable : Thenable[WorkspaceEdit],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn FileWillCreateEvent::waitUntil_for_Any(
  self : FileWillCreateEvent,
  thenable : Thenable[Any],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn FileWillDeleteEvent::waitUntil_for_WorkspaceEdit(
  self : FileWillDeleteEvent,
  thenable : Thenable[WorkspaceEdit],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn FileWillDeleteEvent::waitUntil_for_Any(
  self : FileWillDeleteEvent,
  thenable : Thenable[Any],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn FileWillRenameEvent::waitUntil_for_WorkspaceEdit(
  self : FileWillRenameEvent,
  thenable : Thenable[WorkspaceEdit],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn FileWillRenameEvent::waitUntil_for_Any(
  self : FileWillRenameEvent,
  thenable : Thenable[Any],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn GlobalEnvironmentVariableCollection::getScoped(
  self : GlobalEnvironmentVariableCollection,
  scope : EnvironmentVariableScope,
) -> EnvironmentVariableCollection = "(self, scope) => self.getScoped(scope)"

///|
pub extern "js" fn InlayHintsProvider::resolveInlayHint(
  self : InlayHintsProvider,
  hint : Any,
  token : CancellationToken,
) -> Any = "(self, hint, token) => self.resolveInlayHint(hint, token)"

///|
pub extern "js" fn LanguageModelAccessInformation::canSendRequest(
  self : LanguageModelAccessInformation,
  chat : LanguageModelChat,
) -> Bool? = "(self, chat) => self.canSendRequest(chat)"

///|
pub extern "js" fn LanguageModelToolTokenizationOptions::countTokens_with_options(
  self : LanguageModelToolTokenizationOptions,
  text : String,
  token : CancellationToken?,
) -> Any = "(self, text, token) => self.countTokens(text, token)"

///|
pub extern "js" fn LanguageStatusItem::dispose(
  self : LanguageStatusItem,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn LogOutputChannel::trace(
  self : LogOutputChannel,
  message : String,
  args : Array[String],
) -> Unit = "(self, message, ...args) => self.trace(message, ...args)"

///|
pub extern "js" fn LogOutputChannel::debug(
  self : LogOutputChannel,
  message : String,
  args : Array[String],
) -> Unit = "(self, message, ...args) => self.debug(message, ...args)"

///|
pub extern "js" fn LogOutputChannel::info(
  self : LogOutputChannel,
  message : String,
  args : Array[String],
) -> Unit = "(self, message, ...args) => self.info(message, ...args)"

///|
pub extern "js" fn LogOutputChannel::warn(
  self : LogOutputChannel,
  message : String,
  args : Array[String],
) -> Unit = "(self, message, ...args) => self.warn(message, ...args)"

///|
pub extern "js" fn LogOutputChannel::error(
  self : LogOutputChannel,
  error : Any,
  args : Array[String],
) -> Unit = "(self, error, ...args) => self.error(error, ...args)"

///|
pub extern "js" fn MarkdownString::appendText(
  self : MarkdownString,
  value : String,
) -> MarkdownString = "(self, value) => self.appendText(value)"

///|
pub extern "js" fn MarkdownString::appendMarkdown(
  self : MarkdownString,
  value : String,
) -> MarkdownString = "(self, value) => self.appendMarkdown(value)"

///|
pub extern "js" fn MarkdownString::appendCodeblock_with_options(
  self : MarkdownString,
  value : String,
  language : String?,
) -> MarkdownString = "(self, value, language) => self.appendCodeblock(value, language)"

///|
pub extern "js" fn McpServerDefinitionProvider::provideMcpServerDefinitions(
  self : McpServerDefinitionProvider,
  token : CancellationToken,
) -> Any = "(self, token) => self.provideMcpServerDefinitions(token)"

///|
pub extern "js" fn Memento::keys(self : Memento) -> Array[String] = "(self) => self.keys()"

///|
pub extern "js" fn Memento::update(
  self : Memento,
  key : String,
  value : Any,
) -> Any = "(self, key, value) => self.update(key, value)"

///|
pub extern "js" fn NotebookCellExecution::start_with_options(
  self : NotebookCellExecution,
  startTime : Int?,
) -> Unit = "(self, startTime) => self.start(startTime)"

///|
pub extern "js" fn NotebookCellExecution::end_with_options(
  self : NotebookCellExecution,
  success : Bool?,
  endTime : Int?,
) -> Unit = "(self, success, endTime) => self.end(success, endTime)"

///|
pub extern "js" fn NotebookCellExecution::clearOutput_with_options(
  self : NotebookCellExecution,
  cell : NotebookCell?,
) -> Any = "(self, cell) => self.clearOutput(cell)"

///|
pub extern "js" fn NotebookController::createNotebookCellExecution(
  self : NotebookController,
  cell : NotebookCell,
) -> NotebookCellExecution = "(self, cell) => self.createNotebookCellExecution(cell)"

///|
pub extern "js" fn NotebookController::dispose(
  self : NotebookController,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn NotebookDocument::cellAt(
  self : NotebookDocument,
  index : Int,
) -> NotebookCell = "(self, index) => self.cellAt(index)"

///|
pub extern "js" fn NotebookDocument::getCells_with_options(
  self : NotebookDocument,
  range : NotebookRange?,
) -> Array[NotebookCell] = "(self, range) => self.getCells(range)"

///|
pub extern "js" fn NotebookDocument::save(self : NotebookDocument) -> Any = "(self) => self.save()"

///|
pub extern "js" fn NotebookDocumentWillSaveEvent::waitUntil_for_WorkspaceEdit(
  self : NotebookDocumentWillSaveEvent,
  thenable : Thenable[WorkspaceEdit],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn NotebookDocumentWillSaveEvent::waitUntil_for_Any(
  self : NotebookDocumentWillSaveEvent,
  thenable : Thenable[Any],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn NotebookRendererMessaging::postMessage_with_options(
  self : NotebookRendererMessaging,
  message : Any,
  editor : NotebookEditor?,
) -> Any = "(self, message, editor) => self.postMessage(message, editor)"

///|
pub extern "js" fn OutputChannel::append(
  self : OutputChannel,
  value : String,
) -> Unit = "(self, value) => self.append(value)"

///|
pub extern "js" fn OutputChannel::appendLine(
  self : OutputChannel,
  value : String,
) -> Unit = "(self, value) => self.appendLine(value)"

///|
pub extern "js" fn OutputChannel::replace(
  self : OutputChannel,
  value : String,
) -> Unit = "(self, value) => self.replace(value)"

///|
pub extern "js" fn OutputChannel::clear(self : OutputChannel) -> Unit = "(self) => self.clear()"

///|
pub extern "js" fn OutputChannel::show_with_options(
  self : OutputChannel,
  preserveFocus : Bool?,
) -> Unit = "(self, preserveFocus) => self.show(preserveFocus)"

///|
pub extern "js" fn OutputChannel::show_with_column(
  self : OutputChannel,
  column : ViewColumn?,
  preserveFocus : Bool?,
) -> Unit = "(self, column, preserveFocus) => self.show(column, preserveFocus)"

///|
pub extern "js" fn OutputChannel::hide(self : OutputChannel) -> Unit = "(self) => self.hide()"

///|
pub extern "js" fn OutputChannel::dispose(self : OutputChannel) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn Position::isBefore(
  self : Position,
  other : Position,
) -> Bool = "(self, other) => self.isBefore(other)"

///|
pub extern "js" fn Position::isBeforeOrEqual(
  self : Position,
  other : Position,
) -> Bool = "(self, other) => self.isBeforeOrEqual(other)"

///|
pub extern "js" fn Position::isAfter(self : Position, other : Position) -> Bool = "(self, other) => self.isAfter(other)"

///|
pub extern "js" fn Position::isAfterOrEqual(
  self : Position,
  other : Position,
) -> Bool = "(self, other) => self.isAfterOrEqual(other)"

///|
pub extern "js" fn Position::isEqual(self : Position, other : Position) -> Bool = "(self, other) => self.isEqual(other)"

///|
pub extern "js" fn Position::compareTo(
  self : Position,
  other : Position,
) -> Int = "(self, other) => self.compareTo(other)"

///|
pub extern "js" fn Position::translate_with_options(
  self : Position,
  lineDelta : Int?,
  characterDelta : Int?,
) -> Position = "(self, lineDelta, characterDelta) => self.translate(lineDelta, characterDelta)"

///|
pub extern "js" fn Position::with_with_options(
  self : Position,
  line : Int?,
  character : Int?,
) -> Position = "(self, line, character) => self.with(line, character)"

///|
pub extern "js" fn Progress::report(self : Progress[Any], value : Any) -> Unit = "(self, value) => self.report(value)"

///|
pub extern "js" fn Pseudoterminal::open(
  self : Pseudoterminal,
  initialDimensions : TerminalDimensions?,
) -> Unit = "(self, initialDimensions) => self.open(initialDimensions)"

///|
pub extern "js" fn Pseudoterminal::close(self : Pseudoterminal) -> Unit = "(self) => self.close()"

///|
pub extern "js" fn Pseudoterminal::handleInput(
  self : Pseudoterminal,
  data : String,
) -> Unit = "(self, data) => self.handleInput(data)"

///|
pub extern "js" fn Pseudoterminal::setDimensions(
  self : Pseudoterminal,
  dimensions : TerminalDimensions,
) -> Unit = "(self, dimensions) => self.setDimensions(dimensions)"

///|
pub extern "js" fn QuickInput::show(self : QuickInput) -> Unit = "(self) => self.show()"

///|
pub extern "js" fn QuickInput::hide(self : QuickInput) -> Unit = "(self) => self.hide()"

///|
pub extern "js" fn QuickInput::dispose(self : QuickInput) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn QuickPickOptions::onDidSelectItem(
  self : QuickPickOptions,
  item : Any,
) -> Any = "(self, item) => self.onDidSelectItem(item)"

///|
pub extern "js" fn Range::contains(self : Range, positionOrRange : Any) -> Bool = "(self, positionOrRange) => self.contains(positionOrRange)"

///|
pub extern "js" fn Range::isEqual(self : Range, other : Range) -> Bool = "(self, other) => self.isEqual(other)"

///|
pub extern "js" fn Range::intersection(self : Range, range : Range) -> Range? = "(self, range) => self.intersection(range)"

///|
pub extern "js" fn Range::union(self : Range, other : Range) -> Range = "(self, other) => self.union(other)"

///|
pub extern "js" fn Range::with_with_options(
  self : Range,
  start : Position?,
  end : Position?,
) -> Range = "(self, start, end) => self.with(start, end)"

///|
pub extern "js" fn SecretStorage::get(
  self : SecretStorage,
  key : String,
) -> Any? = "(self, key) => self.get(key)"

///|
pub extern "js" fn SecretStorage::store(
  self : SecretStorage,
  key : String,
  value : String,
) -> Any = "(self, key, value) => self.store(key, value)"

///|
pub extern "js" fn SecretStorage::delete(
  self : SecretStorage,
  key : String,
) -> Any = "(self, key) => self.delete(key)"

///|
pub extern "js" fn SnippetString::appendText(
  self : SnippetString,
  text : String,
) -> SnippetString = "(self, String) => self.appendText(String)"

///|
pub extern "js" fn SnippetString::appendTabstop_with_options(
  self : SnippetString,
  number : Int?,
) -> SnippetString = "(self, Int) => self.appendTabstop(Int)"

///|
pub extern "js" fn SnippetString::appendChoice_with_options(
  self : SnippetString,
  values : Any,
  number : Int?,
) -> SnippetString = "(self, values, Int) => self.appendChoice(values, Int)"

///|
pub extern "js" fn SourceControl::createResourceGroup(
  self : SourceControl,
  id : String,
  label : String,
) -> SourceControlResourceGroup = "(self, id, label) => self.createResourceGroup(id, label)"

///|
pub extern "js" fn SourceControl::dispose(self : SourceControl) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn SourceControlResourceGroup::dispose(
  self : SourceControlResourceGroup,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn StatusBarItem::show(self : StatusBarItem) -> Unit = "(self) => self.show()"

///|
pub extern "js" fn StatusBarItem::hide(self : StatusBarItem) -> Unit = "(self) => self.hide()"

///|
pub extern "js" fn StatusBarItem::dispose(self : StatusBarItem) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TaskExecution::terminate(self : TaskExecution) -> Unit = "(self) => self.terminate()"

///|
pub extern "js" fn TaskProvider::provideTasks(
  self : TaskProvider,
  token : CancellationToken,
) -> Any = "(self, token) => self.provideTasks(token)"

///|
pub extern "js" fn TaskProvider::resolveTask(
  self : TaskProvider,
  task : Any,
  token : CancellationToken,
) -> Any = "(self, task, token) => self.resolveTask(task, token)"

///|
pub extern "js" fn TelemetryLogger::dispose(self : TelemetryLogger) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TelemetrySender::sendEventData_with_options(
  self : TelemetrySender,
  eventName : String,
  data : Any?,
) -> Unit = "(self, eventName, data) => self.sendEventData(eventName, data)"

///|
pub extern "js" fn TelemetrySender::sendErrorData_with_options(
  self : TelemetrySender,
  error : Error,
  data : Any?,
) -> Unit = "(self, error, data) => self.sendErrorData(error, data)"

///|
pub extern "js" fn TelemetrySender::flush(self : TelemetrySender) -> Any = "(self) => self.flush()"

///|
pub extern "js" fn Terminal::sendText_with_options(
  self : Terminal,
  text : String,
  shouldExecute : Bool?,
) -> Unit = "(self, text, shouldExecute) => self.sendText(text, shouldExecute)"

///|
pub extern "js" fn Terminal::show_with_options(
  self : Terminal,
  preserveFocus : Bool?,
) -> Unit = "(self, preserveFocus) => self.show(preserveFocus)"

///|
pub extern "js" fn Terminal::hide(self : Terminal) -> Unit = "(self) => self.hide()"

///|
pub extern "js" fn Terminal::dispose(self : Terminal) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TerminalLinkProvider::handleTerminalLink(
  self : TerminalLinkProvider,
  link : Any,
) -> Any = "(self, link) => self.handleTerminalLink(link)"

///|
pub extern "js" fn TerminalShellExecution::read(
  self : TerminalShellExecution,
) -> Any = "(self) => self.read()"

///|
pub extern "js" fn TerminalShellIntegration::executeCommand(
  self : TerminalShellIntegration,
  commandLine : String,
) -> TerminalShellExecution = "(self, commandLine) => self.executeCommand(commandLine)"

///|
pub extern "js" fn TerminalShellIntegration::executeCommand_with_args(
  self : TerminalShellIntegration,
  executable : String,
  args : Array[String],
) -> TerminalShellExecution = "(self, executable, args) => self.executeCommand(executable, args)"

///|
pub extern "js" fn TestController::createTestItem_with_options(
  self : TestController,
  id : String,
  label : String,
  uri : Uri?,
) -> TestItem = "(self, id, label, uri) => self.createTestItem(id, label, uri)"

///|
pub extern "js" fn TestController::invalidateTestResults_with_options(
  self : TestController,
  items : Array[TestItem]?,
) -> Unit = "(self, items) => self.invalidateTestResults(items)"

///|
pub extern "js" fn TestController::dispose(self : TestController) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TestItemCollection::replace(
  self : TestItemCollection,
  items : Any,
) -> Unit = "(self, items) => self.replace(items)"

///|
pub extern "js" fn TestItemCollection::add(
  self : TestItemCollection,
  item : TestItem,
) -> Unit = "(self, item) => self.add(item)"

///|
pub extern "js" fn TestItemCollection::delete(
  self : TestItemCollection,
  itemId : String,
) -> Unit = "(self, itemId) => self.delete(itemId)"

///|
pub extern "js" fn TestItemCollection::get(
  self : TestItemCollection,
  itemId : String,
) -> TestItem? = "(self, itemId) => self.get(itemId)"

///|
pub extern "js" fn TestRun::enqueued(
  self : TestRun,
  testItem : TestItem,
) -> Unit = "(self, test) => self.enqueued(test)"

///|
pub extern "js" fn TestRun::started(
  self : TestRun,
  testItem : TestItem,
) -> Unit = "(self, test) => self.started(test)"

///|
pub extern "js" fn TestRun::skipped(
  self : TestRun,
  testItem : TestItem,
) -> Unit = "(self, test) => self.skipped(test)"

///|
pub extern "js" fn TestRun::passed_with_options(
  self : TestRun,
  testItem : TestItem,
  duration : Int?,
) -> Unit = "(self, test, duration) => self.passed(test, duration)"

///|
pub extern "js" fn TestRun::appendOutput_with_options(
  self : TestRun,
  output : String,
  location : Location?,
  testItem : TestItem?,
) -> Unit = "(self, output, location, test) => self.appendOutput(output, location, test)"

///|
pub extern "js" fn TestRun::addCoverage(
  self : TestRun,
  fileCoverage : FileCoverage,
) -> Unit = "(self, fileCoverage) => self.addCoverage(fileCoverage)"

///|
pub extern "js" fn TestRun::end(self : TestRun) -> Unit = "(self) => self.end()"

///|
pub extern "js" fn TestRunProfile::dispose(self : TestRunProfile) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TextDocument::save(self : TextDocument) -> Any = "(self) => self.save()"

///|
pub extern "js" fn TextDocument::lineAt(
  self : TextDocument,
  line : Int,
) -> TextLine = "(self, line) => self.lineAt(line)"

///|
pub extern "js" fn TextDocument::lineAt_at_position(
  self : TextDocument,
  position : Position,
) -> TextLine = "(self, position) => self.lineAt(position)"

///|
pub extern "js" fn TextDocument::offsetAt(
  self : TextDocument,
  position : Position,
) -> Int = "(self, position) => self.offsetAt(position)"

///|
pub extern "js" fn TextDocument::positionAt(
  self : TextDocument,
  offset : Int,
) -> Position = "(self, offset) => self.positionAt(offset)"

///|
pub extern "js" fn TextDocument::getText_with_options(
  self : TextDocument,
  range : Range?,
) -> String = "(self, range) => self.getText(range)"

///|
pub extern "js" fn TextDocument::validateRange(
  self : TextDocument,
  range : Range,
) -> Range = "(self, range) => self.validateRange(range)"

///|
pub extern "js" fn TextDocument::validatePosition(
  self : TextDocument,
  position : Position,
) -> Position = "(self, position) => self.validatePosition(position)"

///|
pub extern "js" fn TextDocumentWillSaveEvent::waitUntil_for_TextEdit(
  self : TextDocumentWillSaveEvent,
  thenable : Thenable[Array[TextEdit]],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn TextDocumentWillSaveEvent::waitUntil_for_Any(
  self : TextDocumentWillSaveEvent,
  thenable : Thenable[Any],
) -> Unit = "(self, thenable) => self.waitUntil(thenable)"

///|
pub extern "js" fn TextEditor::revealRange_with_options(
  self : TextEditor,
  range : Range,
  revealType : TextEditorRevealType?,
) -> Unit = "(self, range, revealType) => self.revealRange(range, revealType)"

///|
pub extern "js" fn TextEditor::show_with_options(
  self : TextEditor,
  column : ViewColumn?,
) -> Unit = "(self, column) => self.show(column)"

///|
pub extern "js" fn TextEditor::hide(self : TextEditor) -> Unit = "(self) => self.hide()"

///|
pub extern "js" fn TextEditorDecorationType::dispose(
  self : TextEditorDecorationType,
) -> Unit = "(self) => self.dispose()"

///|
pub extern "js" fn TreeDataProvider::getTreeItem(
  self : TreeDataProvider[Any],
  element : Any,
) -> Any = "(self, element) => self.getTreeItem(element)"

///|
pub extern "js" fn TreeDataProvider::getChildren_with_options(
  self : TreeDataProvider[Any],
  element : Any?,
) -> Any = "(self, element) => self.getChildren(element)"

///|
pub extern "js" fn TreeDataProvider::getParent(
  self : TreeDataProvider[Any],
  element : Any,
) -> Any = "(self, element) => self.getParent(element)"

///|
pub extern "js" fn Uri::toString_with_options(
  self : Uri,
  skipEncoding : Bool?,
) -> String = "(self, skipEncoding) => self.toString(skipEncoding)"

///|
pub extern "js" fn Uri::toJSON(self : Uri) -> Any = "(self) => self.toJSON()"

///|
pub extern "js" fn Uri::with_(self : Uri, change : Any) -> Uri = "(self, change) => self.with(change)"

///|
pub extern "js" fn UriHandler::handleUri(self : UriHandler, uri : Uri) -> Any = "(self, uri) => self.handleUri(uri)"

///|
pub extern "js" fn Webview::postMessage(self : Webview, message : Any) -> Any = "(self, message) => self.postMessage(message)"

///|
pub extern "js" fn Webview::asWebviewUri(
  self : Webview,
  localResource : Uri,
) -> Uri = "(self, localResource) => self.asWebviewUri(localResource)"

///|
pub extern "js" fn WebviewPanel::reveal_with_options(
  self : WebviewPanel,
  viewColumn : ViewColumn?,
  preserveFocus : Bool?,
) -> Unit = "(self, viewColumn, preserveFocus) => self.reveal(viewColumn, preserveFocus)"

///|
pub extern "js" fn WebviewPanel::dispose(self : WebviewPanel) -> Any = "(self) => self.dispose()"

///|
pub extern "js" fn WebviewView::show_with_options(
  self : WebviewView,
  preserveFocus : Bool?,
) -> Unit = "(self, preserveFocus) => self.show(preserveFocus)"

///|
pub extern "js" fn WorkspaceEdit::delete_with_options(
  self : WorkspaceEdit,
  uri : Uri,
  range : Range,
  metadata : WorkspaceEditEntryMetadata?,
) -> Unit = "(self, uri, range, metadata) => self.delete(uri, range, metadata)"

///|
pub extern "js" fn WorkspaceEdit::has(self : WorkspaceEdit, uri : Uri) -> Bool = "(self, uri) => self.has(uri)"

///|
pub extern "js" fn WorkspaceEdit::set(
  self : WorkspaceEdit,
  uri : Uri,
  edits : Any,
) -> Unit = "(self, uri, edits) => self.set(uri, edits)"

///|
pub extern "js" fn WorkspaceEdit::set_with_metadata(
  self : WorkspaceEdit,
  uri : Uri,
  edits : Any,
) -> Unit = "(self, uri, edits) => self.set(uri, edits)"

///|
pub extern "js" fn WorkspaceEdit::get(
  self : WorkspaceEdit,
  uri : Uri,
) -> Array[TextEdit] = "(self, uri) => self.get(uri)"

///|
pub extern "js" fn WorkspaceEdit::entries(self : WorkspaceEdit) -> Array[Any] = "(self) => self.entries()"

///|
pub extern "js" fn TextDocument::getWordRangeAtPosition(
  self : TextDocument,
  position : Position,
  regex : Any?,
) -> Range? = "(self, position, regex) => self.getWordRangeAtPosition(position, regex)"

///|
pub extern "js" fn Position::translate_with_change(
  self : Position,
  change : Any,
) -> Position = "(self, change) => self.translate(change)"

///|
pub extern "js" fn Position::with_change(
  self : Position,
  change : Any,
) -> Position = "(self, change) => self.with(change)"

///|
pub extern "js" fn Range::with_change(self : Range, change : Any) -> Range = "(self, change) => self.with(change)"

///|
pub extern "js" fn TreeDataProvider::resolveTreeItem(
  self : TreeDataProvider[Any],
  item : Any,
  element : Any,
  token : CancellationToken,
) -> Any = "(self, item, element, token) => self.resolveTreeItem(item, element, token)"

///|
pub extern "js" fn QuickPick::onDidSelectItem(
  self : QuickPick,
  item : Any,
) -> Any = "(self, item) => self.onDidSelectItem(item)"

///|
pub extern "js" fn InputBox::onDidChangeValue(
  self : InputBox,
  value : String,
) -> Any = "(self, value) => self.onDidChangeValue(value)"

///|
pub extern "js" fn InputBox::onDidAccept(self : InputBox) -> Any = "(self) => self.onDidAccept()"

///|
pub extern "js" fn Webview::setHtml(self : Webview, html : String) -> Unit = "(self, html) => { self.html = html; }"

///|
pub extern "js" fn Webview::setOptions(self : Webview, options : Any) -> Unit = "(self, options) => { self.options = options; }"

///|
pub extern "js" fn StatusBarItem::setText(
  self : StatusBarItem,
  text : String,
) -> Unit = "(self, text) => { self.text = text; }"

///|
pub extern "js" fn StatusBarItem::setTooltip(
  self : StatusBarItem,
  tooltip : String,
) -> Unit = "(self, tooltip) => { self.tooltip = tooltip; }"

///|
pub extern "js" fn StatusBarItem::setCommand(
  self : StatusBarItem,
  command : Any,
) -> Unit = "(self, command) => { self.command = command; }"

///|
pub extern "js" fn StatusBarItem::setColor(
  self : StatusBarItem,
  color : String,
) -> Unit = "(self, color) => { self.color = color; }"

///|
pub extern "js" fn StatusBarItem::setBackgroundColor(
  self : StatusBarItem,
  backgroundColor : Any,
) -> Unit = "(self, backgroundColor) => { self.backgroundColor = backgroundColor; }"

///|
pub extern "js" fn StatusBarItem::setPriority(
  self : StatusBarItem,
  priority : Int,
) -> Unit = "(self, priority) => { self.priority = priority; }"

///|
pub extern "js" fn Terminal::getProcessId(self : Terminal) -> Any = "(self) => self.processId"

///|
pub extern "js" fn Terminal::getExitStatus(self : Terminal) -> Any = "(self) => self.exitStatus"

///|
pub extern "js" fn Terminal::getState(self : Terminal) -> Any = "(self) => self.state"

///|
pub extern "js" fn TreeItem::setCommand(self : Any, command : Any) -> Unit = "(self, command) => { self.command = command; }"

///|
pub extern "js" fn TreeItem::setContextValue(
  self : Any,
  contextValue : String,
) -> Unit = "(self, contextValue) => { self.contextValue = contextValue; }"

///|
pub extern "js" fn TreeItem::setTooltip(self : Any, tooltip : String) -> Unit = "(self, tooltip) => { self.tooltip = tooltip; }"

///|
pub extern "js" fn TreeItem::setIconPath(self : Any, iconPath : Any) -> Unit = "(self, iconPath) => { self.iconPath = iconPath; }"

///|
pub extern "js" fn DiagnosticCollection::forEach(
  self : DiagnosticCollection,
  callback : Any,
) -> Unit = "(self, callback) => self.forEach(callback)"

///|
pub extern "js" fn EnvironmentVariableCollection::forEach(
  self : EnvironmentVariableCollection,
  callback : Any,
) -> Unit = "(self, callback) => self.forEach(callback)"

///|
pub extern "js" fn EnvironmentVariableCollection::replace(
  self : EnvironmentVariableCollection,
  variable : String,
  value : String,
) -> Unit = "(self, variable, value) => self.replace(variable, value)"

///|
pub extern "js" fn EnvironmentVariableCollection::append(
  self : EnvironmentVariableCollection,
  variable : String,
  value : String,
) -> Unit = "(self, variable, value) => self.append(variable, value)"

///|
pub extern "js" fn EnvironmentVariableCollection::prepend(
  self : EnvironmentVariableCollection,
  variable : String,
  value : String,
) -> Unit = "(self, variable, value) => self.prepend(variable, value)"

///|
pub extern "js" fn EnvironmentVariableCollection::getKeys(
  self : EnvironmentVariableCollection,
) -> Array[String] = "(self) => Array.from(self.keys())"

///|
pub extern "js" fn TextEditor::edit(
  self : TextEditor,
  callback : Any,
  options : Any?,
) -> Any = "(self, callback, options) => self.edit(callback, options)"

///|
pub extern "js" fn TextEditor::insertSnippet(
  self : TextEditor,
  snippet : Any,
  location : Any?,
  options : Any?,
) -> Any = "(self, snippet, location, options) => self.insertSnippet(snippet, location, options)"

///|
pub extern "js" fn TextEditor::setDecorations(
  self : TextEditor,
  decorationType : Any,
  rangesOrOptions : Any,
) -> Unit = "(self, decorationType, rangesOrOptions) => self.setDecorations(decorationType, rangesOrOptions)"

///|
pub extern "js" fn WebviewPanel::setTitle(
  self : WebviewPanel,
  title : String,
) -> Unit = "(self, title) => { self.title = title; }"

///|
pub extern "js" fn WebviewPanel::setIconPath(
  self : WebviewPanel,
  iconPath : Any,
) -> Unit = "(self, iconPath) => { self.iconPath = iconPath; }"

///|
pub extern "js" fn Progress::reportWithIncrement(
  self : Progress[Any],
  value : Any,
  increment : Int,
) -> Unit = "(self, value, increment) => self.report({ ...value, increment })"

///|
pub extern "js" fn Disposable::from(disposableLikes : Any) -> Disposable = "(disposableLikes) => require('vscode').Disposable.from(...disposableLikes)"

///|
pub extern "js" fn TextEdit::replace(range : Range, newText : String) -> Any = "(range, newText) => require('vscode').TextEdit.replace(range, newText)"

///|
pub extern "js" fn TextEdit::insert(
  position : Position,
  newText : String,
) -> Any = "(position, newText) => require('vscode').TextEdit.insert(position, newText)"

///|
pub extern "js" fn TextEdit::delete(range : Range) -> Any = "(range) => require('vscode').TextEdit.delete(range)"

///|
pub extern "js" fn TextEdit::setEndOfLine(eol : Any) -> Any = "(eol) => require('vscode').TextEdit.setEndOfLine(eol)"

///|
pub extern "js" fn SnippetTextEdit::replace(
  range : Range,
  snippet : Any,
) -> Any = "(range, snippet) => require('vscode').SnippetTextEdit.replace(range, snippet)"

///|
pub extern "js" fn SnippetTextEdit::insert(
  position : Position,
  snippet : Any,
) -> Any = "(position, snippet) => require('vscode').SnippetTextEdit.insert(position, snippet)"

///|
pub extern "js" fn NotebookEdit::replaceCells(
  range : Any,
  newCells : Any,
) -> Any = "(range, newCells) => require('vscode').NotebookEdit.replaceCells(range, newCells)"

///|
pub extern "js" fn NotebookEdit::insertCells(
  index : Int,
  newCells : Any,
) -> Any = "(index, newCells) => require('vscode').NotebookEdit.insertCells(index, newCells)"

///|
pub extern "js" fn NotebookEdit::deleteCells(range : Any) -> Any = "(range) => require('vscode').NotebookEdit.deleteCells(range)"

///|
pub extern "js" fn NotebookEdit::updateCellMetadata(
  index : Int,
  newCellMetadata : Any,
) -> Any = "(index, newCellMetadata) => require('vscode').NotebookEdit.updateCellMetadata(index, newCellMetadata)"

///|
pub extern "js" fn NotebookEdit::updateNotebookMetadata(
  newNotebookMetadata : Any,
) -> Any = "(newNotebookMetadata) => require('vscode').NotebookEdit.updateNotebookMetadata(newNotebookMetadata)"

///|
pub extern "js" fn NotebookCellOutputItem::text(
  value : String,
  mime : String?,
) -> Any = "(value, mime) => require('vscode').NotebookCellOutputItem.text(value, mime)"

///|
pub extern "js" fn NotebookCellOutputItem::json(
  value : Any,
  mime : String?,
) -> Any = "(value, mime) => require('vscode').NotebookCellOutputItem.json(value, mime)"

///|
pub extern "js" fn NotebookCellOutputItem::stdout(value : String) -> Any = "(value) => require('vscode').NotebookCellOutputItem.stdout(value)"

///|
pub extern "js" fn NotebookCellOutputItem::stderr(value : String) -> Any = "(value) => require('vscode').NotebookCellOutputItem.stderr(value)"

///|
pub extern "js" fn NotebookCellOutputItem::error(value : Any) -> Any = "(value) => require('vscode').NotebookCellOutputItem.error(value)"

///|
pub extern "js" fn FileCoverage::fromDetails(uri : Uri, details : Any) -> Any = "(uri, details) => require('vscode').FileCoverage.fromDetails(uri, details)"

///|
pub extern "js" fn TestMessage::diff(
  message : Any,
  expected : String,
  actual : String,
) -> Any = "(message, expected, actual) => require('vscode').TestMessage.diff(message, expected, actual)"

///|
pub extern "js" fn CodeActionProvider::provideCodeActions_with_range(
  self : CodeActionProvider,
  document : TextDocument,
  range : Range,
  context : CodeActionContext,
  token : CancellationToken,
) -> Any = "(self, document, range, context, token) => self.provideCodeActions(document, range, context, token)"

///|
pub extern "js" fn CodeActionProvider::provideCodeActions_with_selection(
  self : CodeActionProvider,
  document : TextDocument,
  selection : Any,
  context : CodeActionContext,
  token : CancellationToken,
) -> Any = "(self, document, selection, context, token) => self.provideCodeActions(document, selection, context, token)"

///|
pub extern "js" fn CodeLensProvider::provideCodeLenses(
  self : CodeLensProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideCodeLenses(document, token)"

///|
pub extern "js" fn DefinitionProvider::provideDefinition(
  self : DefinitionProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideDefinition(document, position, token)"

///|
pub extern "js" fn ImplementationProvider::provideImplementation(
  self : ImplementationProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideImplementation(document, position, token)"

///|
pub extern "js" fn TypeDefinitionProvider::provideTypeDefinition(
  self : TypeDefinitionProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideTypeDefinition(document, position, token)"

///|
pub extern "js" fn DeclarationProvider::provideDeclaration(
  self : DeclarationProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideDeclaration(document, position, token)"

///|
pub extern "js" fn HoverProvider::provideHover(
  self : HoverProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideHover(document, position, token)"

///|
pub extern "js" fn DocumentHighlightProvider::provideDocumentHighlights(
  self : DocumentHighlightProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideDocumentHighlights(document, position, token)"

///|
pub extern "js" fn DocumentSymbolProvider::provideDocumentSymbols(
  self : DocumentSymbolProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideDocumentSymbols(document, token)"

///|
pub extern "js" fn WorkspaceSymbolProvider::provideWorkspaceSymbols(
  self : WorkspaceSymbolProvider,
  query : String,
  token : CancellationToken,
) -> Any = "(self, query, token) => self.provideWorkspaceSymbols(query, token)"

///|
pub extern "js" fn WorkspaceSymbolProvider::resolveWorkspaceSymbol(
  self : WorkspaceSymbolProvider,
  symbol : Any,
  token : CancellationToken,
) -> Any = "(self, symbol, token) => self.resolveWorkspaceSymbol(symbol, token)"

///|
pub extern "js" fn ReferenceProvider::provideReferences(
  self : ReferenceProvider,
  document : TextDocument,
  position : Position,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, document, position, context, token) => self.provideReferences(document, position, context, token)"

///|
pub extern "js" fn RenameProvider::provideRenameEdits(
  self : RenameProvider,
  document : TextDocument,
  position : Position,
  newName : String,
  token : CancellationToken,
) -> Any = "(self, document, position, newName, token) => self.provideRenameEdits(document, position, newName, token)"

///|
pub extern "js" fn RenameProvider::prepareRename(
  self : RenameProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.prepareRename(document, position, token)"

///|
pub extern "js" fn DocumentSemanticTokensProvider::provideDocumentSemanticTokens(
  self : DocumentSemanticTokensProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideDocumentSemanticTokens(document, token)"

///|
pub extern "js" fn DocumentSemanticTokensProvider::provideDocumentSemanticTokensEdits(
  self : DocumentSemanticTokensProvider,
  document : TextDocument,
  previousResultId : String,
  token : CancellationToken,
) -> Any = "(self, document, previousResultId, token) => self.provideDocumentSemanticTokensEdits(document, previousResultId, token)"

///|
pub extern "js" fn DocumentRangeSemanticTokensProvider::provideDocumentRangeSemanticTokens(
  self : DocumentRangeSemanticTokensProvider,
  document : TextDocument,
  range : Range,
  token : CancellationToken,
) -> Any = "(self, document, range, token) => self.provideDocumentRangeSemanticTokens(document, range, token)"

///|
pub extern "js" fn DocumentFormattingEditProvider::provideDocumentFormattingEdits(
  self : DocumentFormattingEditProvider,
  document : TextDocument,
  options : Any,
  token : CancellationToken,
) -> Any = "(self, document, options, token) => self.provideDocumentFormattingEdits(document, options, token)"

///|
pub extern "js" fn DocumentRangeFormattingEditProvider::provideDocumentRangeFormattingEdits(
  self : DocumentRangeFormattingEditProvider,
  document : TextDocument,
  range : Range,
  options : Any,
  token : CancellationToken,
) -> Any = "(self, document, range, options, token) => self.provideDocumentRangeFormattingEdits(document, range, options, token)"

///|
pub extern "js" fn OnTypeFormattingEditProvider::provideOnTypeFormattingEdits(
  self : OnTypeFormattingEditProvider,
  document : TextDocument,
  position : Position,
  ch : String,
  options : Any,
  token : CancellationToken,
) -> Any = "(self, document, position, ch, options, token) => self.provideOnTypeFormattingEdits(document, position, ch, options, token)"

///|
pub extern "js" fn SignatureHelpProvider::provideSignatureHelp(
  self : SignatureHelpProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
  context : Any,
) -> Any = "(self, document, position, token, context) => self.provideSignatureHelp(document, position, token, context)"

///|
pub extern "js" fn DocumentColorProvider::provideDocumentColors(
  self : DocumentColorProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideDocumentColors(document, token)"

///|
pub extern "js" fn DocumentColorProvider::provideColorPresentations(
  self : DocumentColorProvider,
  color : Any,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, color, context, token) => self.provideColorPresentations(color, context, token)"

///|
pub extern "js" fn InlayHintsProvider::provideInlayHints(
  self : InlayHintsProvider,
  document : TextDocument,
  range : Range,
  token : CancellationToken,
) -> Any = "(self, document, range, token) => self.provideInlayHints(document, range, token)"

///|
pub extern "js" fn FoldingRangeProvider::provideFoldingRanges(
  self : FoldingRangeProvider,
  document : TextDocument,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, document, context, token) => self.provideFoldingRanges(document, context, token)"

///|
pub extern "js" fn SelectionRangeProvider::provideSelectionRanges(
  self : SelectionRangeProvider,
  document : TextDocument,
  positions : Any,
  token : CancellationToken,
) -> Any = "(self, document, positions, token) => self.provideSelectionRanges(document, positions, token)"

///|
pub extern "js" fn CallHierarchyProvider::prepareCallHierarchy(
  self : CallHierarchyProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.prepareCallHierarchy(document, position, token)"

///|
pub extern "js" fn CallHierarchyProvider::provideCallHierarchyIncomingCalls(
  self : CallHierarchyProvider,
  item : Any,
  token : CancellationToken,
) -> Any = "(self, item, token) => self.provideCallHierarchyIncomingCalls(item, token)"

///|
pub extern "js" fn CallHierarchyProvider::provideCallHierarchyOutgoingCalls(
  self : CallHierarchyProvider,
  item : Any,
  token : CancellationToken,
) -> Any = "(self, item, token) => self.provideCallHierarchyOutgoingCalls(item, token)"

///|
pub extern "js" fn TypeHierarchyProvider::prepareTypeHierarchy(
  self : TypeHierarchyProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.prepareTypeHierarchy(document, position, token)"

///|
pub extern "js" fn TypeHierarchyProvider::provideTypeHierarchySupertypes(
  self : TypeHierarchyProvider,
  item : Any,
  token : CancellationToken,
) -> Any = "(self, item, token) => self.provideTypeHierarchySupertypes(item, token)"

///|
pub extern "js" fn TypeHierarchyProvider::provideTypeHierarchySubtypes(
  self : TypeHierarchyProvider,
  item : Any,
  token : CancellationToken,
) -> Any = "(self, item, token) => self.provideTypeHierarchySubtypes(item, token)"

///|
pub extern "js" fn LinkedEditingRangeProvider::provideLinkedEditingRanges(
  self : LinkedEditingRangeProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideLinkedEditingRanges(document, position, token)"

///|
pub extern "js" fn DocumentDropEditProvider::provideDocumentDropEdits(
  self : DocumentDropEditProvider,
  document : TextDocument,
  position : Position,
  dataTransfer : Any,
  token : CancellationToken,
) -> Any = "(self, document, position, dataTransfer, token) => self.provideDocumentDropEdits(document, position, dataTransfer, token)"

///|
pub extern "js" fn DocumentPasteEditProvider::prepareDocumentPaste(
  self : DocumentPasteEditProvider,
  document : TextDocument,
  ranges : Any,
  dataTransfer : Any,
  token : CancellationToken,
) -> Any = "(self, document, ranges, dataTransfer, token) => self.prepareDocumentPaste(document, ranges, dataTransfer, token)"

///|
pub extern "js" fn DocumentPasteEditProvider::provideDocumentPasteEdits(
  self : DocumentPasteEditProvider,
  document : TextDocument,
  ranges : Any,
  dataTransfer : Any,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, document, ranges, dataTransfer, context, token) => self.provideDocumentPasteEdits(document, ranges, dataTransfer, context, token)"

///|
pub extern "js" fn InlineValuesProvider::provideInlineValues(
  self : InlineValuesProvider,
  document : TextDocument,
  viewPort : Range,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, document, viewPort, context, token) => self.provideInlineValues(document, viewPort, context, token)"

///|
pub extern "js" fn EvaluatableExpressionProvider::provideEvaluatableExpression(
  self : EvaluatableExpressionProvider,
  document : TextDocument,
  position : Position,
  token : CancellationToken,
) -> Any = "(self, document, position, token) => self.provideEvaluatableExpression(document, position, token)"

///|
pub extern "js" fn InlineCompletionItemProvider::provideInlineCompletionItems(
  self : InlineCompletionItemProvider,
  document : TextDocument,
  position : Position,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, document, position, context, token) => self.provideInlineCompletionItems(document, position, context, token)"

///|
pub extern "js" fn DocumentLinkProvider::provideDocumentLinks(
  self : DocumentLinkProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideDocumentLinks(document, token)"

///|
pub extern "js" fn FileDecorationProvider::provideFileDecoration(
  self : FileDecorationProvider,
  uri : Uri,
  token : CancellationToken,
) -> Any = "(self, uri, token) => self.provideFileDecoration(uri, token)"

///|
pub extern "js" fn TextDocumentContentProvider::provideTextDocumentContent(
  self : TextDocumentContentProvider,
  uri : Uri,
  token : CancellationToken,
) -> Any = "(self, uri, token) => self.provideTextDocumentContent(uri, token)"

///|
pub extern "js" fn TerminalLinkProvider::provideTerminalLinks(
  self : TerminalLinkProvider,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, context, token) => self.provideTerminalLinks(context, token)"

///|
pub extern "js" fn TerminalProfileProvider::provideTerminalProfile(
  self : TerminalProfileProvider,
  token : CancellationToken,
) -> Any = "(self, token) => self.provideTerminalProfile(token)"

///|
pub extern "js" fn NotebookCellStatusBarItemProvider::provideCellStatusBarItems(
  self : NotebookCellStatusBarItemProvider,
  cell : Any,
  token : CancellationToken,
) -> Any = "(self, cell, token) => self.provideCellStatusBarItems(cell, token)"

///|
pub extern "js" fn NotebookSerializer::deserializeNotebook(
  self : NotebookSerializer,
  content : Any,
  token : CancellationToken,
) -> Any = "(self, content, token) => self.deserializeNotebook(content, token)"

///|
pub extern "js" fn NotebookSerializer::serializeNotebook(
  self : NotebookSerializer,
  data : Any,
  token : CancellationToken,
) -> Any = "(self, data, token) => self.serializeNotebook(data, token)"

///|
pub extern "js" fn FileSystemProvider::writeFile(
  self : FileSystemProvider,
  uri : Uri,
  content : Any,
  options : Any,
) -> Any = "(self, uri, content, options) => self.writeFile(uri, content, options)"

///|
pub extern "js" fn FileSystemProvider::rename(
  self : FileSystemProvider,
  oldUri : Uri,
  newUri : Uri,
  options : Any,
) -> Any = "(self, oldUri, newUri, options) => self.rename(oldUri, newUri, options)"

///|
pub extern "js" fn FileSystemProvider::delete(
  self : FileSystemProvider,
  uri : Uri,
  options : Any,
) -> Any = "(self, uri, options) => self.delete(uri, options)"

///|
pub extern "js" fn FileSystemProvider::copy(
  self : FileSystemProvider,
  source : Uri,
  destination : Uri,
  options : Any,
) -> Any = "(self, source, destination, options) => self.copy(source, destination, options)"

///|
pub extern "js" fn QuickPick::setItems(self : QuickPick, items : Any) -> Unit = "(self, items) => { self.items = items; }"

///|
pub extern "js" fn QuickPick::getItems(self : QuickPick) -> Any = "(self) => self.items"

///|
pub extern "js" fn QuickPick::setCanSelectMany(
  self : QuickPick,
  canSelectMany : Bool,
) -> Unit = "(self, canSelectMany) => { self.canSelectMany = canSelectMany; }"

///|
pub extern "js" fn QuickPick::getCanSelectMany(self : QuickPick) -> Bool = "(self) => self.canSelectMany"

///|
pub extern "js" fn QuickPick::setMatchOnDescription(
  self : QuickPick,
  matchOnDescription : Bool,
) -> Unit = "(self, matchOnDescription) => { self.matchOnDescription = matchOnDescription; }"

///|
pub extern "js" fn QuickPick::setMatchOnDetail(
  self : QuickPick,
  matchOnDetail : Bool,
) -> Unit = "(self, matchOnDetail) => { self.matchOnDetail = matchOnDetail; }"

///|
pub extern "js" fn QuickPick::setActiveItems(
  self : QuickPick,
  activeItems : Any,
) -> Unit = "(self, activeItems) => { self.activeItems = activeItems; }"

///|
pub extern "js" fn QuickPick::getActiveItems(self : QuickPick) -> Any = "(self) => self.activeItems"

///|
pub extern "js" fn QuickPick::setSelectedItems(
  self : QuickPick,
  selectedItems : Any,
) -> Unit = "(self, selectedItems) => { self.selectedItems = selectedItems; }"

///|
pub extern "js" fn QuickPick::getSelectedItems(self : QuickPick) -> Any = "(self) => self.selectedItems"

///|
pub extern "js" fn InputBox::setValue(self : InputBox, value : String) -> Unit = "(self, value) => { self.value = value; }"

///|
pub extern "js" fn InputBox::getValue(self : InputBox) -> String = "(self) => self.value"

///|
pub extern "js" fn InputBox::setPlaceholder(
  self : InputBox,
  placeholder : String,
) -> Unit = "(self, placeholder) => { self.placeholder = placeholder; }"

///|
pub extern "js" fn InputBox::setPassword(
  self : InputBox,
  password : Bool,
) -> Unit = "(self, password) => { self.password = password; }"

///|
pub extern "js" fn InputBox::setPrompt(
  self : InputBox,
  prompt : String,
) -> Unit = "(self, prompt) => { self.prompt = prompt; }"

///|
pub extern "js" fn InputBox::setValidationMessage(
  self : InputBox,
  validationMessage : Any,
) -> Unit = "(self, validationMessage) => { self.validationMessage = validationMessage; }"

///|
pub extern "js" fn TreeItem::setDescription(
  self : Any,
  description : Any,
) -> Unit = "(self, description) => { self.description = description; }"

///|
pub extern "js" fn TreeItem::setResourceUri(
  self : Any,
  resourceUri : Uri,
) -> Unit = "(self, resourceUri) => { self.resourceUri = resourceUri; }"

///|
pub extern "js" fn TreeItem::setCollapsibleState(
  self : Any,
  collapsibleState : Any,
) -> Unit = "(self, collapsibleState) => { self.collapsibleState = collapsibleState; }"

///|
pub extern "js" fn TreeView::getMessage(self : Any) -> String? = "(self) => self.message"

///|
pub extern "js" fn TreeView::setMessage(self : Any, message : String?) -> Unit = "(self, message) => { self.message = message; }"

///|
pub extern "js" fn TreeView::getTitle(self : Any) -> String? = "(self) => self.title"

///|
pub extern "js" fn TreeView::setTitle(self : Any, title : String?) -> Unit = "(self, title) => { self.title = title; }"

///|
pub extern "js" fn TreeView::getDescription(self : Any) -> String? = "(self) => self.description"

///|
pub extern "js" fn TreeView::setDescription(
  self : Any,
  description : String?,
) -> Unit = "(self, description) => { self.description = description; }"

///|
pub extern "js" fn WebviewPanel::getTitle(self : WebviewPanel) -> String = "(self) => self.title"

///|
pub extern "js" fn WebviewPanel::getViewType(self : WebviewPanel) -> String = "(self) => self.viewType"

///|
pub extern "js" fn WebviewPanel::getActive(self : WebviewPanel) -> Bool = "(self) => self.active"

///|
pub extern "js" fn WebviewPanel::getVisible(self : WebviewPanel) -> Bool = "(self) => self.visible"

///|
pub extern "js" fn WebviewPanel::getViewColumn(self : WebviewPanel) -> Any? = "(self) => self.viewColumn"

///|
pub extern "js" fn WebviewView::getViewType(self : WebviewView) -> String = "(self) => self.viewType"

///|
pub extern "js" fn WebviewView::getVisible(self : WebviewView) -> Bool = "(self) => self.visible"

///|
pub extern "js" fn WebviewView::getTitle(self : WebviewView) -> String? = "(self) => self.title"

///|
pub extern "js" fn WebviewView::setTitle(
  self : WebviewView,
  title : String?,
) -> Unit = "(self, title) => { self.title = title; }"

///|
pub extern "js" fn WebviewView::getDescription(self : WebviewView) -> String? = "(self) => self.description"

///|
pub extern "js" fn WebviewView::setDescription(
  self : WebviewView,
  description : String?,
) -> Unit = "(self, description) => { self.description = description; }"

///|
pub extern "js" fn Webview::getHtml(self : Webview) -> String = "(self) => self.html"

///|
pub extern "js" fn Webview::getOptions(self : Webview) -> Any = "(self) => self.options"

///|
pub extern "js" fn Webview::getCspSource(self : Webview) -> String = "(self) => self.cspSource"

///|
pub extern "js" fn TaskExecution::getTask(self : TaskExecution) -> Any = "(self) => self.task"

///|
pub extern "js" fn NotebookController::setDescription(
  self : NotebookController,
  description : String?,
) -> Unit = "(self, description) => { self.description = description; }"

///|
pub extern "js" fn NotebookController::getDescription(
  self : NotebookController,
) -> String? = "(self) => self.description"

///|
pub extern "js" fn NotebookController::setDetail(
  self : NotebookController,
  detail : String?,
) -> Unit = "(self, detail) => { self.detail = detail; }"

///|
pub extern "js" fn NotebookController::getDetail(
  self : NotebookController,
) -> String? = "(self) => self.detail"

///|
pub extern "js" fn NotebookController::setSupportedLanguages(
  self : NotebookController,
  supportedLanguages : Array[String]?,
) -> Unit = "(self, supportedLanguages) => { self.supportedLanguages = supportedLanguages; }"

///|
pub extern "js" fn NotebookController::getSupportedLanguages(
  self : NotebookController,
) -> Array[String]? = "(self) => self.supportedLanguages"

///|
pub extern "js" fn NotebookController::setSupportsExecutionOrder(
  self : NotebookController,
  supportsExecutionOrder : Bool?,
) -> Unit = "(self, supportsExecutionOrder) => { self.supportsExecutionOrder = supportsExecutionOrder; }"

///|
pub extern "js" fn NotebookController::getSupportsExecutionOrder(
  self : NotebookController,
) -> Bool? = "(self) => self.supportsExecutionOrder"

///|
pub extern "js" fn CommentThread::setComments(
  self : CommentThread,
  comments : Any,
) -> Unit = "(self, comments) => { self.comments = comments; }"

///|
pub extern "js" fn CommentThread::getComments(self : CommentThread) -> Any = "(self) => self.comments"

///|
pub extern "js" fn CommentThread::setCollapsibleState(
  self : CommentThread,
  collapsibleState : Any,
) -> Unit = "(self, collapsibleState) => { self.collapsibleState = collapsibleState; }"

///|
pub extern "js" fn CommentThread::getCollapsibleState(
  self : CommentThread,
) -> Any = "(self) => self.collapsibleState"

///|
pub extern "js" fn CommentThread::setCanReply(
  self : CommentThread,
  canReply : Bool,
) -> Unit = "(self, canReply) => { self.canReply = canReply; }"

///|
pub extern "js" fn CommentThread::getCanReply(self : CommentThread) -> Bool = "(self) => self.canReply"

///|
pub extern "js" fn CommentThread::setContextValue(
  self : CommentThread,
  contextValue : String?,
) -> Unit = "(self, contextValue) => { self.contextValue = contextValue; }"

///|
pub extern "js" fn CommentThread::getContextValue(
  self : CommentThread,
) -> String? = "(self) => self.contextValue"

///|
pub extern "js" fn CommentThread::setLabel(
  self : CommentThread,
  label : String?,
) -> Unit = "(self, label) => { self.label = label; }"

///|
pub extern "js" fn CommentThread::getLabel(self : CommentThread) -> String? = "(self) => self.label"

///|
pub extern "js" fn CommentController::setCommentingRangeProvider(
  self : CommentController,
  commentingRangeProvider : Any?,
) -> Unit = "(self, commentingRangeProvider) => { self.commentingRangeProvider = commentingRangeProvider; }"

///|
pub extern "js" fn CommentController::getCommentingRangeProvider(
  self : CommentController,
) -> Any? = "(self) => self.commentingRangeProvider"

///|
pub extern "js" fn CommentController::setOptions(
  self : CommentController,
  options : Any?,
) -> Unit = "(self, options) => { self.options = options; }"

///|
pub extern "js" fn CommentController::getOptions(
  self : CommentController,
) -> Any? = "(self) => self.options"

///|
pub extern "js" fn SourceControl::setInputBox(
  self : SourceControl,
  inputBox : Any,
) -> Unit = "(self, inputBox) => { self.inputBox = inputBox; }"

///|
pub extern "js" fn SourceControl::getInputBox(self : SourceControl) -> Any = "(self) => self.inputBox"

///|
pub extern "js" fn SourceControl::setQuickDiffProvider(
  self : SourceControl,
  quickDiffProvider : Any?,
) -> Unit = "(self, quickDiffProvider) => { self.quickDiffProvider = quickDiffProvider; }"

///|
pub extern "js" fn SourceControl::getQuickDiffProvider(
  self : SourceControl,
) -> Any? = "(self) => self.quickDiffProvider"

///|
pub extern "js" fn SourceControl::setAcceptInputCommand(
  self : SourceControl,
  acceptInputCommand : Command?,
) -> Unit = "(self, acceptInputCommand) => { self.acceptInputCommand = acceptInputCommand; }"

///|
pub extern "js" fn SourceControl::getAcceptInputCommand(
  self : SourceControl,
) -> Command? = "(self) => self.acceptInputCommand"

///|
pub extern "js" fn SourceControl::setStatusBarCommands(
  self : SourceControl,
  statusBarCommands : Array[Command]?,
) -> Unit = "(self, statusBarCommands) => { self.statusBarCommands = statusBarCommands; }"

///|
pub extern "js" fn SourceControl::getStatusBarCommands(
  self : SourceControl,
) -> Array[Command]? = "(self) => self.statusBarCommands"

///|
pub extern "js" fn SourceControlResourceGroup::setResourceStates(
  self : SourceControlResourceGroup,
  resourceStates : Any,
) -> Unit = "(self, resourceStates) => { self.resourceStates = resourceStates; }"

///|
pub extern "js" fn SourceControlResourceGroup::getResourceStates(
  self : SourceControlResourceGroup,
) -> Any = "(self) => self.resourceStates"

///|
pub extern "js" fn SourceControlResourceGroup::setHideWhenEmpty(
  self : SourceControlResourceGroup,
  hideWhenEmpty : Bool?,
) -> Unit = "(self, hideWhenEmpty) => { self.hideWhenEmpty = hideWhenEmpty; }"

///|
pub extern "js" fn SourceControlResourceGroup::getHideWhenEmpty(
  self : SourceControlResourceGroup,
) -> Bool? = "(self) => self.hideWhenEmpty"

///|
pub extern "js" fn SourceControlInputBox::setValue(
  self : Any,
  value : String,
) -> Unit = "(self, value) => { self.value = value; }"

///|
pub extern "js" fn SourceControlInputBox::getValue(self : Any) -> String = "(self) => self.value"

///|
pub extern "js" fn SourceControlInputBox::setPlaceholder(
  self : Any,
  placeholder : String,
) -> Unit = "(self, placeholder) => { self.placeholder = placeholder; }"

///|
pub extern "js" fn SourceControlInputBox::getPlaceholder(self : Any) -> String = "(self) => self.placeholder"

///|
pub extern "js" fn SourceControlInputBox::setEnabled(
  self : Any,
  enabled : Bool,
) -> Unit = "(self, enabled) => { self.enabled = enabled; }"

///|
pub extern "js" fn SourceControlInputBox::getEnabled(self : Any) -> Bool = "(self) => self.enabled"

///|
pub extern "js" fn SourceControlInputBox::setVisible(
  self : Any,
  visible : Bool,
) -> Unit = "(self, visible) => { self.visible = visible; }"

///|
pub extern "js" fn SourceControlInputBox::getVisible(self : Any) -> Bool = "(self) => self.visible"

///|
pub extern "js" fn TestController::setLabel(
  self : TestController,
  label : String,
) -> Unit = "(self, label) => { self.label = label; }"

///|
pub extern "js" fn TestController::getLabel(self : TestController) -> String = "(self) => self.label"

///|
pub extern "js" fn TestController::setRefreshHandler(
  self : TestController,
  refreshHandler : Any?,
) -> Unit = "(self, refreshHandler) => { self.refreshHandler = refreshHandler; }"

///|
pub extern "js" fn TestController::getRefreshHandler(
  self : TestController,
) -> Any? = "(self) => self.refreshHandler"

///|
pub extern "js" fn TestController::setResolveHandler(
  self : TestController,
  resolveHandler : Any?,
) -> Unit = "(self, resolveHandler) => { self.resolveHandler = resolveHandler; }"

///|
pub extern "js" fn TestController::getResolveHandler(
  self : TestController,
) -> Any? = "(self) => self.resolveHandler"

///|
pub extern "js" fn TestItem::setLabel(self : Any, label : String) -> Unit = "(self, label) => { self.label = label; }"

///|
pub extern "js" fn TestItem::getLabel(self : Any) -> String = "(self) => self.label"

///|
pub extern "js" fn TestItem::setDescription(
  self : Any,
  description : String?,
) -> Unit = "(self, description) => { self.description = description; }"

///|
pub extern "js" fn TestItem::getDescription(self : Any) -> String? = "(self) => self.description"

///|
pub extern "js" fn TestItem::setCanResolveChildren(
  self : Any,
  canResolveChildren : Bool,
) -> Unit = "(self, canResolveChildren) => { self.canResolveChildren = canResolveChildren; }"

///|
pub extern "js" fn TestItem::getCanResolveChildren(self : Any) -> Bool = "(self) => self.canResolveChildren"

///|
pub extern "js" fn TestItem::setBusy(self : Any, busy : Bool) -> Unit = "(self, busy) => { self.busy = busy; }"

///|
pub extern "js" fn TestItem::getBusy(self : Any) -> Bool = "(self) => self.busy"

///|
pub extern "js" fn TestItem::setTags(self : Any, tags : Any) -> Unit = "(self, tags) => { self.tags = tags; }"

///|
pub extern "js" fn TestItem::getTags(self : Any) -> Any = "(self) => self.tags"

///|
pub extern "js" fn TestItem::setRange(self : Any, range : Range?) -> Unit = "(self, range) => { self.range = range; }"

///|
pub extern "js" fn TestItem::getRange(self : Any) -> Range? = "(self) => self.range"

///|
pub extern "js" fn TestItem::setError(self : Any, error : Any?) -> Unit = "(self, error) => { self.error = error; }"

///|
pub extern "js" fn TestItem::getError(self : Any) -> Any? = "(self) => self.error"

///|
pub extern "js" fn TestItem::setSortText(
  self : Any,
  sortText : String?,
) -> Unit = "(self, sortText) => { self.sortText = sortText; }"

///|
pub extern "js" fn TestItem::getSortText(self : Any) -> String? = "(self) => self.sortText"

///|
pub extern "js" fn TestRunProfile::setLabel(
  self : TestRunProfile,
  label : String,
) -> Unit = "(self, label) => { self.label = label; }"

///|
pub extern "js" fn TestRunProfile::getLabel(self : TestRunProfile) -> String = "(self) => self.label"

///|
pub extern "js" fn TestRunProfile::setIsDefault(
  self : TestRunProfile,
  isDefault : Bool,
) -> Unit = "(self, isDefault) => { self.isDefault = isDefault; }"

///|
pub extern "js" fn TestRunProfile::getIsDefault(self : TestRunProfile) -> Bool = "(self) => self.isDefault"

///|
pub extern "js" fn TestRunProfile::setTag(
  self : TestRunProfile,
  tag : Any?,
) -> Unit = "(self, tag) => { self.tag = tag; }"

///|
pub extern "js" fn TestRunProfile::getTag(self : TestRunProfile) -> Any? = "(self) => self.tag"

///|
pub extern "js" fn TestRunProfile::setSupportsContinuousRun(
  self : TestRunProfile,
  supportsContinuousRun : Bool,
) -> Unit = "(self, supportsContinuousRun) => { self.supportsContinuousRun = supportsContinuousRun; }"

///|
pub extern "js" fn TestRunProfile::getSupportsContinuousRun(
  self : TestRunProfile,
) -> Bool = "(self) => self.supportsContinuousRun"

///|
pub extern "js" fn LanguageStatusItem::setName(
  self : LanguageStatusItem,
  name : String?,
) -> Unit = "(self, name) => { self.name = name; }"

///|
pub extern "js" fn LanguageStatusItem::getName(
  self : LanguageStatusItem,
) -> String? = "(self) => self.name"

///|
pub extern "js" fn LanguageStatusItem::setText(
  self : LanguageStatusItem,
  text : String,
) -> Unit = "(self, text) => { self.text = text; }"

///|
pub extern "js" fn LanguageStatusItem::getText(
  self : LanguageStatusItem,
) -> String = "(self) => self.text"

///|
pub extern "js" fn LanguageStatusItem::setDetail(
  self : LanguageStatusItem,
  detail : String?,
) -> Unit = "(self, detail) => { self.detail = detail; }"

///|
pub extern "js" fn LanguageStatusItem::getDetail(
  self : LanguageStatusItem,
) -> String? = "(self) => self.detail"

///|
pub extern "js" fn LanguageStatusItem::setSeverity(
  self : LanguageStatusItem,
  severity : Any,
) -> Unit = "(self, severity) => { self.severity = severity; }"

///|
pub extern "js" fn LanguageStatusItem::getSeverity(
  self : LanguageStatusItem,
) -> Any = "(self) => self.severity"

///|
pub extern "js" fn LanguageStatusItem::setCommand(
  self : LanguageStatusItem,
  command : Command?,
) -> Unit = "(self, command) => { self.command = command; }"

///|
pub extern "js" fn LanguageStatusItem::getCommand(
  self : LanguageStatusItem,
) -> Command? = "(self) => self.command"

///|
pub extern "js" fn LanguageStatusItem::setAccessibilityInformation(
  self : LanguageStatusItem,
  accessibilityInformation : Any?,
) -> Unit = "(self, accessibilityInformation) => { self.accessibilityInformation = accessibilityInformation; }"

///|
pub extern "js" fn LanguageStatusItem::getAccessibilityInformation(
  self : LanguageStatusItem,
) -> Any? = "(self) => self.accessibilityInformation"

///|
pub extern "js" fn LanguageStatusItem::setBusy(
  self : LanguageStatusItem,
  busy : Bool,
) -> Unit = "(self, busy) => { self.busy = busy; }"

///|
pub extern "js" fn LanguageStatusItem::getBusy(
  self : LanguageStatusItem,
) -> Bool = "(self) => self.busy"

///|
pub extern "js" fn AuthenticationProvider::getSessions(
  self : AuthenticationProvider,
  scopes : Array[String]?,
) -> Any = "(self, scopes) => self.getSessions(scopes)"

///|
pub extern "js" fn AuthenticationProvider::createSession(
  self : AuthenticationProvider,
  scopes : Array[String],
) -> Any = "(self, scopes) => self.createSession(scopes)"

///|
pub extern "js" fn CustomTextEditorProvider::resolveCustomTextEditor(
  self : CustomTextEditorProvider,
  document : Any,
  webviewPanel : WebviewPanel,
  token : CancellationToken,
) -> Any = "(self, document, webviewPanel, token) => self.resolveCustomTextEditor(document, webviewPanel, token)"

///|
pub extern "js" fn CustomReadonlyEditorProvider::openCustomDocument(
  self : CustomReadonlyEditorProvider,
  uri : Uri,
  openContext : Any,
  token : CancellationToken,
) -> Any = "(self, uri, openContext, token) => self.openCustomDocument(uri, openContext, token)"

///|
pub extern "js" fn CustomReadonlyEditorProvider::resolveCustomEditor(
  self : CustomReadonlyEditorProvider,
  document : Any,
  webviewPanel : WebviewPanel,
  token : CancellationToken,
) -> Any = "(self, document, webviewPanel, token) => self.resolveCustomEditor(document, webviewPanel, token)"

///|
pub extern "js" fn CustomEditorProvider::saveCustomDocument(
  self : CustomEditorProvider,
  document : Any,
  cancellation : CancellationToken,
) -> Any = "(self, document, cancellation) => self.saveCustomDocument(document, cancellation)"

///|
pub extern "js" fn CustomEditorProvider::saveCustomDocumentAs(
  self : CustomEditorProvider,
  document : Any,
  destination : Uri,
  cancellation : CancellationToken,
) -> Any = "(self, document, destination, cancellation) => self.saveCustomDocumentAs(document, destination, cancellation)"

///|
pub extern "js" fn CustomEditorProvider::revertCustomDocument(
  self : CustomEditorProvider,
  document : Any,
  cancellation : CancellationToken,
) -> Any = "(self, document, cancellation) => self.revertCustomDocument(document, cancellation)"

///|
pub extern "js" fn CustomEditorProvider::backupCustomDocument(
  self : CustomEditorProvider,
  document : Any,
  context : Any,
  cancellation : CancellationToken,
) -> Any = "(self, document, context, cancellation) => self.backupCustomDocument(document, context, cancellation)"

///|
pub extern "js" fn WebviewViewProvider::resolveWebviewView(
  self : WebviewViewProvider,
  webviewView : WebviewView,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, webviewView, context, token) => self.resolveWebviewView(webviewView, context, token)"

///|
pub extern "js" fn WebviewPanelSerializer::deserializeWebviewPanel(
  self : WebviewPanelSerializer,
  webviewPanel : WebviewPanel,
  state : Any,
) -> Any = "(self, webviewPanel, state) => self.deserializeWebviewPanel(webviewPanel, state)"

///|
pub extern "js" fn DebugConfigurationProvider::provideDebugConfigurations(
  self : DebugConfigurationProvider,
  folder : Any?,
  token : CancellationToken?,
) -> Any = "(self, folder, token) => self.provideDebugConfigurations(folder, token)"

///|
pub extern "js" fn DebugConfigurationProvider::resolveDebugConfiguration(
  self : DebugConfigurationProvider,
  folder : Any?,
  config : Any,
  token : CancellationToken?,
) -> Any = "(self, folder, config, token) => self.resolveDebugConfiguration(folder, config, token)"

///|
pub extern "js" fn DebugConfigurationProvider::resolveDebugConfigurationWithSubstitutedVariables(
  self : DebugConfigurationProvider,
  folder : Any?,
  config : Any,
  token : CancellationToken?,
) -> Any = "(self, folder, config, token) => self.resolveDebugConfigurationWithSubstitutedVariables(folder, config, token)"

///|
pub extern "js" fn DebugAdapterDescriptorFactory::createDebugAdapterDescriptor(
  self : DebugAdapterDescriptorFactory,
  session : DebugSession,
  executable : Any?,
) -> Any = "(self, session, executable) => self.createDebugAdapterDescriptor(session, executable)"

///|
pub extern "js" fn DebugAdapterTrackerFactory::createDebugAdapterTracker(
  self : DebugAdapterTrackerFactory,
  session : DebugSession,
) -> Any = "(self, session) => self.createDebugAdapterTracker(session)"

///|
pub extern "js" fn CommentingRangeProvider::provideCommentingRanges(
  self : CommentingRangeProvider,
  document : TextDocument,
  token : CancellationToken,
) -> Any = "(self, document, token) => self.provideCommentingRanges(document, token)"

///|
pub extern "js" fn QuickDiffProvider::provideOriginalResource(
  self : QuickDiffProvider,
  uri : Uri,
  token : CancellationToken,
) -> Any = "(self, uri, token) => self.provideOriginalResource(uri, token)"

///|
pub extern "js" fn TelemetrySender::sendEventData(
  self : TelemetrySender,
  eventName : String,
  data : Any?,
) -> Unit = "(self, eventName, data) => self.sendEventData(eventName, data)"

///|
pub extern "js" fn TelemetrySender::sendErrorData(
  self : TelemetrySender,
  error : Any,
  data : Any?,
) -> Unit = "(self, error, data) => self.sendErrorData(error, data)"

///|
pub extern "js" fn ChatParticipant::setIconPath(
  self : ChatParticipant,
  iconPath : Any?,
) -> Unit = "(self, iconPath) => { self.iconPath = iconPath; }"

///|
pub extern "js" fn ChatParticipant::getIconPath(self : ChatParticipant) -> Any? = "(self) => self.iconPath"

///|
pub extern "js" fn ChatParticipant::setRequestHandler(
  self : ChatParticipant,
  requestHandler : Any,
) -> Unit = "(self, requestHandler) => { self.requestHandler = requestHandler; }"

///|
pub extern "js" fn ChatParticipant::getRequestHandler(
  self : ChatParticipant,
) -> Any = "(self) => self.requestHandler"

///|
pub extern "js" fn ChatParticipant::setFollowupProvider(
  self : ChatParticipant,
  followupProvider : Any?,
) -> Unit = "(self, followupProvider) => { self.followupProvider = followupProvider; }"

///|
pub extern "js" fn ChatParticipant::getFollowupProvider(
  self : ChatParticipant,
) -> Any? = "(self) => self.followupProvider"

///|
pub extern "js" fn LanguageModelChatProvider::provideChatResponse(
  self : LanguageModelChatProvider,
  messages : Any,
  options : Any,
  progress : Any,
  token : CancellationToken,
) -> Any = "(self, messages, options, progress, token) => self.provideChatResponse(messages, options, progress, token)"

///|
pub extern "js" fn LanguageModelChatProvider::provideTokenCount(
  self : LanguageModelChatProvider,
  messages : Any,
  options : Any,
  token : CancellationToken,
) -> Any = "(self, messages, options, token) => self.provideTokenCount(messages, options, token)"

///|
pub extern "js" fn LanguageModelTool::setPrepareInvocation(
  self : LanguageModelTool,
  prepareInvocation : Any?,
) -> Unit = "(self, prepareInvocation) => { self.prepareInvocation = prepareInvocation; }"

///|
pub extern "js" fn LanguageModelTool::getPrepareInvocation(
  self : LanguageModelTool,
) -> Any? = "(self) => self.prepareInvocation"

///|
pub extern "js" fn LanguageModelTool::setInvoke(
  self : LanguageModelTool,
  invoke : Any,
) -> Unit = "(self, invoke) => { self.invoke = invoke; }"

///|
pub extern "js" fn LanguageModelTool::getInvoke(
  self : LanguageModelTool,
) -> Any = "(self) => self.invoke"

///|
pub extern "js" fn NotebookCell::setExecutionSummary(
  self : Any,
  executionSummary : Any?,
) -> Unit = "(self, executionSummary) => { self.executionSummary = executionSummary; }"

///|
pub extern "js" fn NotebookCell::getExecutionSummary(self : Any) -> Any? = "(self) => self.executionSummary"

///|
pub extern "js" fn NotebookCell::setMetadata(
  self : Any,
  metadata : Any,
) -> Unit = "(self, metadata) => { self.metadata = metadata; }"

///|
pub extern "js" fn NotebookCell::getMetadata(self : Any) -> Any = "(self) => self.metadata"

///|
pub extern "js" fn NotebookCell::setOutputs(self : Any, outputs : Any) -> Unit = "(self, outputs) => { self.outputs = outputs; }"

///|
pub extern "js" fn NotebookCell::getOutputs(self : Any) -> Any = "(self) => self.outputs"

///|
pub extern "js" fn DataTransfer::forEach(
  self : DataTransfer,
  callback : Any,
) -> Unit = "(self, callback) => self.forEach(callback)"

///|
pub extern "js" fn Pseudoterminal::setName(
  self : Pseudoterminal,
  name : String?,
) -> Unit = "(self, name) => { self.name = name; }"

///|
pub extern "js" fn Pseudoterminal::getName(self : Pseudoterminal) -> String? = "(self) => self.name"

///|
pub extern "js" fn Extension::getExtensionKind(self : Extension) -> Any = "(self) => self.extensionKind"

///|
pub extern "js" fn Extension::getPackageJSON(self : Extension) -> Any = "(self) => self.packageJSON"

///|
pub extern "js" fn Extension::getExtensionPath(self : Extension) -> String = "(self) => self.extensionPath"

///|
pub extern "js" fn Extension::getIsActive(self : Extension) -> Bool = "(self) => self.isActive"

///|
pub extern "js" fn Extension::getExports(self : Extension) -> Any = "(self) => self.exports"

///|
pub extern "js" fn NotebookRange::withChange(self : Any, change : Any) -> Any = "(self, change) => self.with(change)"

///|
pub extern "js" fn TabGroup::getIsActive(self : Any) -> Bool = "(self) => self.isActive"

///|
pub extern "js" fn TabGroup::getViewColumn(self : Any) -> Any = "(self) => self.viewColumn"

///|
pub extern "js" fn TabGroup::getTabs(self : Any) -> Any = "(self) => self.tabs"

///|
pub extern "js" fn TabGroup::getActiveTab(self : Any) -> Any? = "(self) => self.activeTab"

///|
pub extern "js" fn Tab::getIsActive(self : Any) -> Bool = "(self) => self.isActive"

///|
pub extern "js" fn Tab::getIsDirty(self : Any) -> Bool = "(self) => self.isDirty"

///|
pub extern "js" fn Tab::getIsPinned(self : Any) -> Bool = "(self) => self.isPinned"

///|
pub extern "js" fn Tab::getIsPreview(self : Any) -> Bool = "(self) => self.isPreview"

///|
pub extern "js" fn Tab::getLabel(self : Any) -> String = "(self) => self.label"

///|
pub extern "js" fn Tab::getGroup(self : Any) -> Any = "(self) => self.group"

///|
pub extern "js" fn Tab::getInput(self : Any) -> Any = "(self) => self.input"

///|
pub extern "js" fn WorkspaceEdit::replace(
  self : WorkspaceEdit,
  uri : Uri,
  range : Range,
  newText : String,
  metadata : Any?,
) -> Unit = "(self, uri, range, newText, metadata) => self.replace(uri, range, newText, metadata)"

///|
pub extern "js" fn WorkspaceEdit::insert(
  self : WorkspaceEdit,
  uri : Uri,
  position : Position,
  newText : String,
  metadata : Any?,
) -> Unit = "(self, uri, position, newText, metadata) => self.insert(uri, position, newText, metadata)"

///|
pub extern "js" fn WorkspaceEdit::createFile(
  self : WorkspaceEdit,
  uri : Uri,
  options : Any?,
  metadata : Any?,
) -> Unit = "(self, uri, options, metadata) => self.createFile(uri, options, metadata)"

///|
pub extern "js" fn WorkspaceEdit::deleteFile(
  self : WorkspaceEdit,
  uri : Uri,
  options : Any?,
  metadata : Any?,
) -> Unit = "(self, uri, options, metadata) => self.deleteFile(uri, options, metadata)"

///|
pub extern "js" fn WorkspaceEdit::renameFile(
  self : WorkspaceEdit,
  oldUri : Uri,
  newUri : Uri,
  options : Any?,
  metadata : Any?,
) -> Unit = "(self, oldUri, newUri, options, metadata) => self.renameFile(oldUri, newUri, options, metadata)"

///|
pub extern "js" fn SnippetString::appendPlaceholder(
  self : SnippetString,
  value : Any,
  number : Int?,
) -> SnippetString = "(self, value, number) => self.appendPlaceholder(value, number)"

///|
pub extern "js" fn SnippetString::appendVariable(
  self : SnippetString,
  name : String,
  defaultValue : Any,
) -> SnippetString = "(self, name, defaultValue) => self.appendVariable(name, defaultValue)"

///|
pub extern "js" fn McpServerDefinitionProvider::resolveMcpServerDefinition(
  self : McpServerDefinitionProvider,
  server : Any,
  token : CancellationToken,
) -> Any = "(self, server, token) => self.resolveMcpServerDefinition(server, token)"

///|
pub extern "js" fn ChatFollowupProvider::provideFollowups(
  self : Any,
  result : Any,
  context : Any,
  token : CancellationToken,
) -> Any = "(self, result, context, token) => self.provideFollowups(result, context, token)"
