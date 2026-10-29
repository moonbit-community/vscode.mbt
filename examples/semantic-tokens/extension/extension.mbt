///|
pub fn deactivate() -> Unit {

}

///|
let vscode = @vscode.vscode

///|
fn[A, B] coerce(x : A) -> B = "%identity"

///|
priv struct Token {
  line : Int32
  char : Int32
  len : Int32
  token_type : String
}

///|
fn tokenize(s : String) -> Array[Token] {
  let mut line = 0
  let mut char = 0
  let mut rest : StringView = s
  let tokens = []
  for ;; {
    lexmatch rest with longest {
      (re"^[0-9]+" as token, after=r) => {
        let len = token.length()
        tokens.push(Token::{ line, char, len, token_type: "number" })
        char += len
        rest = r
      }
      (re"^\"[^\"]*\"" as token, after=r) => {
        let len = token.length()
        tokens.push(Token::{ line, char, len, token_type: "string" })
        char += len
        rest = r
      }
      (re"^//[^\r\n]*" as token, after=r) => {
        let len = token.length()
        tokens.push(Token::{ line, char, len, token_type: "comment" })
        char += len
        rest = r
      }
      (re"^(\r\n|[\n\r])", after=r) => {
        char = 0
        line += 1
        rest = r
      }
      re"^$" => break
      all => {
        let r = try! all[1:]
        rest = r
      }
    }
  }
  tokens
  // ...
}

///|
pub fn activate(context : @vscode.ExtensionContext) -> Unit {
  println("start")
  let token_types = [
    "comment", "string", "keyword", "number", "regexp", "operator", "namespace",
    "type", "struct", "class", "interface", "enum", "typeParameter", "function",
    "method", "decorator", "macro", "variable", "parameter", "property", "label",
  ]
  let token_types_map = Map::from_iter(
    token_types.iter().mapi((idx, key) => (key, idx)),
  )
  token_types_map["notInLegend"] = token_types.length() + 2
  let provider = @vscode.DocumentSemanticTokensProvider::{
    onDidChangeSemanticTokens: None,
    provideDocumentSemanticTokensEdits: None,
    provideDocumentSemanticTokens: fn(_text_document, _cancellation_token) {
      let source_text = _text_document.getText_with_options(None)
      let all_tokens = tokenize(source_text)
      let builder = @vscode.SemanticTokensBuilder::new(None)
      for token in all_tokens {
        builder.push(
          token.line,
          token.char,
          token.len,
          token_types_map[token.token_type],
          None,
        )
      }
      coerce(builder.build_with_options(None))
    },
  }
  let semantic_tokens_legend = @vscode.SemanticTokensLegend::new(
    token_types,
    None,
  )
  let disposable = (vscode.languages.registerDocumentSemanticTokensProvider)(
    coerce("semanticLanguage"),
    provider,
    semantic_tokens_legend,
  )
  context.subscriptions.push(disposable)
}
