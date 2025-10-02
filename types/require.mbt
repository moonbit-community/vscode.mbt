///|
extern "js" fn _cjs_require(path : String) -> Any = "require"

///|
pub fn[A] require(path : String) -> A {
  _cjs_require(path) |> coerce
}
