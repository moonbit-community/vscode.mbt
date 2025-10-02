///|
pub fn deactivate() -> Unit {

}

///|
let vscode = @vscode.vscode

///|
fnalias @vscode.coerce

///|
pub fn activate(context : @vscode.ExtensionContext) -> Unit {
  let provider = @vscode.CompletionItemProvider::{
    resolveCompletionItem: None,
    provideCompletionItems: fn(_doc, _pos, _token, _ctx) {
      let result : Array[@vscode.CompletionItem] = []
      let line_prefix = try! _doc.lineAt_at_position(_pos).text[0:_pos.character]
      if line_prefix.has_suffix("console.") {
        fn mk_item(s : String) {
          @vscode.CompletionItem::new(
            coerce(s),
            Some(@vscode.CompletionItemKind::Method),
          )
        }

        let meths = ["log", "warn", "error"]
        result.push_iter(meths.map(mk_item).iter())
      }
      coerce(result)
    },
  }
  let disposable = vscode.languages.registerCompletionItemProvider.into()(
    coerce("plaintext"),
    provider,
    ["."],
    // "extension.helloWorld", provider,"."
  )
  context.subscriptions.push(disposable)
}
