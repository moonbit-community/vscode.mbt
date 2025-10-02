///|
pub fn deactivate() -> Unit {

}

///|
fnalias @vscode.coerce

///|
let vscode = @vscode.vscode

///|
pub fn activate(context : @vscode.ExtensionContext) -> Unit {
  println("code actions sample activated")
  let provider = @vscode.CodeActionProvider::{
    provideCodeActions: fn(_doc, _range, _context, _token) {
      let action = @vscode.CodeAction::new("hello Action", Some(@vscode.CodeActionKind::refactor()))
      println("trigger action")
      let result : Array[@vscode.CodeAction] = [
        action,
      ]
      coerce(result)
    },
    resolveCodeAction: None,
  }
  let disposable = (vscode.languages.registerCodeActionsProvider)(
    coerce("plaintext"),
    provider,
    None,
  )
  context.subscriptions.push(disposable)
  println("done")
}
