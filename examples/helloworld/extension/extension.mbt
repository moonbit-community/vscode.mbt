///|
pub fn deactivate() -> Unit {

}

///|
let vscode = @vscode.vscode

///|
pub fn activate(context : @vscode.ExtensionContext) -> Unit {
  println(context.extensionUri)
  let command = @vscode.Func0Rest::from(fn(
    _rest : Array[@vscode.Any],
  ) -> @vscode.Any {
    let message = vscode.window.showInformationMessage.into()
    message("Hello moonbit", []) |> ignore
    @vscode.coerce(())
  })
  let disposable = (vscode.commands.registerCommand)(
    "extension.helloWorld", command,
  )
  context.subscriptions.push(disposable)
}
