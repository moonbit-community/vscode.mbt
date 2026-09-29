///|
extern "js" fn func0rest_from_ffi(f : (FixedArray[Any]) -> Any) -> Func0Rest[Any, Any] =
  #| f => (...rest) => f(rest)
  #|

fn func0rest_from(f : (Array[Any]) -> Any) -> Func0Rest[Any, Any] {
  func0rest_from_ffi(fn(__a1) { f(Array::from_fixed_array(__a1)) })
}

///|
extern "js" fn func0rest_into_ffi(fr : Func0Rest[Any, Any]) -> (FixedArray[Any]) -> Any =
  #| f => (rest) => f(...rest)

fn func0rest_into(fr : Func0Rest[Any, Any]) -> (Array[Any]) -> Any {
  fn(__a1) { func0rest_into_ffi(fr)(FixedArray::from_array(__a1)) }
}

///|
extern "js" fn func1rest_from_ffi(
  f : (Any, FixedArray[Any]) -> Any,
) -> Func1Rest[Any, Any, Any] =
  #| f => (a1, ...rest) => f(a1, rest)
  #|

fn func1rest_from(
  f : (Any, Array[Any]) -> Any,
) -> Func1Rest[Any, Any, Any] {
  func1rest_from_ffi(fn(__a1, __a2) { f(__a1, Array::from_fixed_array(__a2)) })
}

///|
extern "js" fn func1rest_into_ffi(
  fr : Func1Rest[Any, Any, Any],
) -> (Any, FixedArray[Any]) -> Any =
  #| f => (a1, rest) => f(a1, ...rest)

fn func1rest_into(
  fr : Func1Rest[Any, Any, Any],
) -> (Any, Array[Any]) -> Any {
  fn(__a1, __a2) { func1rest_into_ffi(fr)(__a1, FixedArray::from_array(__a2)) }
}

///|
extern "js" fn func2rest_from_ffi(
  f : (Any, Any, FixedArray[Any]) -> Any,
) -> Func2Rest[Any, Any, Any, Any] =
  #| f => (a1, a2, ...rest) => f(a1, a2, rest)
  #|

fn func2rest_from(
  f : (Any, Any, Array[Any]) -> Any,
) -> Func2Rest[Any, Any, Any, Any] {
  func2rest_from_ffi(fn(__a1, __a2, __a3) { f(__a1, __a2, Array::from_fixed_array(__a3)) })
}

///|
extern "js" fn func2rest_into_ffi(
  fr : Func2Rest[Any, Any, Any, Any],
) -> (Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, rest) => f(a1, a2, ...rest)

fn func2rest_into(
  fr : Func2Rest[Any, Any, Any, Any],
) -> (Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3) { func2rest_into_ffi(fr)(__a1, __a2, FixedArray::from_array(__a3)) }
}

///|
extern "js" fn func3rest_from_ffi(
  f : (Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func3Rest[Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, ...rest) => f(a1, a2, a3, rest)
  #|

fn func3rest_from(
  f : (Any, Any, Any, Array[Any]) -> Any,
) -> Func3Rest[Any, Any, Any, Any, Any] {
  func3rest_from_ffi(fn(__a1, __a2, __a3, __a4) { f(__a1, __a2, __a3, Array::from_fixed_array(__a4)) })
}

///|
extern "js" fn func3rest_into_ffi(
  fr : Func3Rest[Any, Any, Any, Any, Any],
) -> (Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, rest) => f(a1, a2, a3, ...rest)

fn func3rest_into(
  fr : Func3Rest[Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4) { func3rest_into_ffi(fr)(__a1, __a2, __a3, FixedArray::from_array(__a4)) }
}

///|
extern "js" fn func4rest_from_ffi(
  f : (Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func4Rest[Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, ...rest) => f(a1, a2, a3, a4, rest)
  #|

fn func4rest_from(
  f : (Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func4Rest[Any, Any, Any, Any, Any, Any] {
  func4rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5) { f(__a1, __a2, __a3, __a4, Array::from_fixed_array(__a5)) })
}

///|
extern "js" fn func4rest_into_ffi(
  fr : Func4Rest[Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, rest) => f(a1, a2, a3, a4, ...rest)

fn func4rest_into(
  fr : Func4Rest[Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5) { func4rest_into_ffi(fr)(__a1, __a2, __a3, __a4, FixedArray::from_array(__a5)) }
}

///|
extern "js" fn func5rest_from_ffi(
  f : (Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func5Rest[Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, ...rest) => f(a1, a2, a3, a4, a5, rest)
  #|

fn func5rest_from(
  f : (Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func5Rest[Any, Any, Any, Any, Any, Any, Any] {
  func5rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6) { f(__a1, __a2, __a3, __a4, __a5, Array::from_fixed_array(__a6)) })
}

///|
extern "js" fn func5rest_into_ffi(
  fr : Func5Rest[Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, rest) => f(a1, a2, a3, a4, a5, ...rest)

fn func5rest_into(
  fr : Func5Rest[Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6) { func5rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, FixedArray::from_array(__a6)) }
}

///|
extern "js" fn func6rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, ...rest) => f(a1, a2, a3, a4, a5, a6, rest)
  #|

fn func6rest_from(
  f : (Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any] {
  func6rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7) { f(__a1, __a2, __a3, __a4, __a5, __a6, Array::from_fixed_array(__a7)) })
}

///|
extern "js" fn func6rest_into_ffi(
  fr : Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, rest) => f(a1, a2, a3, a4, a5, a6, ...rest)

fn func6rest_into(
  fr : Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7) { func6rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, FixedArray::from_array(__a7)) }
}

///|
extern "js" fn func7rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, rest)
  #|

fn func7rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any] {
  func7rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, Array::from_fixed_array(__a8)) })
}

///|
extern "js" fn func7rest_into_ffi(
  fr : Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, rest) => f(a1, a2, a3, a4, a5, a6, a7, ...rest)

fn func7rest_into(
  fr : Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8) { func7rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, FixedArray::from_array(__a8)) }
}

///|
extern "js" fn func8rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, rest)
  #|

fn func8rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] {
  func8rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, Array::from_fixed_array(__a9)) })
}

///|
extern "js" fn func8rest_into_ffi(
  fr : Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, ...rest)

fn func8rest_into(
  fr : Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9) { func8rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, FixedArray::from_array(__a9)) }
}

///|
extern "js" fn func9rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, rest)
  #|

fn func9rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] {
  func9rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, Array::from_fixed_array(__a10)) })
}

///|
extern "js" fn func9rest_into_ffi(
  fr : Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, ...rest)

fn func9rest_into(
  fr : Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10) { func9rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, FixedArray::from_array(__a10)) }
}

///|
extern "js" fn func10rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, rest)
  #|

fn func10rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] {
  func10rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, Array::from_fixed_array(__a11)) })
}

///|
extern "js" fn func10rest_into_ffi(
  fr : Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ...rest)

fn func10rest_into(
  fr : Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11) { func10rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, FixedArray::from_array(__a11)) }
}

///|
extern "js" fn func11rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func11Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, rest)
  #|

fn func11rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func11Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] {
  func11rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, Array::from_fixed_array(__a12)) })
}

///|
extern "js" fn func11rest_into_ffi(
  fr : Func11Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, ...rest)

fn func11rest_into(
  fr : Func11Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12) { func11rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, FixedArray::from_array(__a12)) }
}

///|
extern "js" fn func12rest_from_ffi(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any,
) -> Func12Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, rest)
  #|

fn func12rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func12Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] {
  func12rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, Array::from_fixed_array(__a13)) })
}

///|
extern "js" fn func12rest_into_ffi(
  fr : Func12Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, FixedArray[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, ...rest)

fn func12rest_into(
  fr : Func12Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13) { func12rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, FixedArray::from_array(__a13)) }
}

///|
extern "js" fn func13rest_from_ffi(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    FixedArray[Any],
  ) -> Any,
) -> Func13Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, rest)
  #|

fn func13rest_from(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Array[Any],
  ) -> Any,
) -> Func13Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] {
  func13rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, Array::from_fixed_array(__a14)) })
}

///|
extern "js" fn func13rest_into_ffi(
  fr : Func13Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  FixedArray[Any],
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, ...rest)

fn func13rest_into(
  fr : Func13Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Array[Any],
) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14) { func13rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, FixedArray::from_array(__a14)) }
}

///|
extern "js" fn func14rest_from_ffi(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    FixedArray[Any],
  ) -> Any,
) -> Func14Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, rest)
  #|

fn func14rest_from(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Array[Any],
  ) -> Any,
) -> Func14Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] {
  func14rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, Array::from_fixed_array(__a15)) })
}

///|
extern "js" fn func14rest_into_ffi(
  fr : Func14Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  FixedArray[Any],
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, ...rest)

fn func14rest_into(
  fr : Func14Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Array[Any],
) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15) { func14rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, FixedArray::from_array(__a15)) }
}

///|
extern "js" fn func15rest_from_ffi(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    FixedArray[Any],
  ) -> Any,
) -> Func15Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, rest)
  #|

fn func15rest_from(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Array[Any],
  ) -> Any,
) -> Func15Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] {
  func15rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, Array::from_fixed_array(__a16)) })
}

///|
extern "js" fn func15rest_into_ffi(
  fr : Func15Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  FixedArray[Any],
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, ...rest)

fn func15rest_into(
  fr : Func15Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Array[Any],
) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16) { func15rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, FixedArray::from_array(__a16)) }
}

///|
extern "js" fn func16rest_from_ffi(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    FixedArray[Any],
  ) -> Any,
) -> Func16Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, rest)
  #|

fn func16rest_from(
  f : (
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Array[Any],
  ) -> Any,
) -> Func16Rest[
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
] {
  func16rest_from_ffi(fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16, __a17) { f(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16, Array::from_fixed_array(__a17)) })
}

///|
extern "js" fn func16rest_into_ffi(
  fr : Func16Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  FixedArray[Any],
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, ...rest)

fn func16rest_into(
  fr : Func16Rest[
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
    Any,
  ],
) -> (
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Any,
  Array[Any],
) -> Any {
  fn(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16, __a17) { func16rest_into_ffi(fr)(__a1, __a2, __a3, __a4, __a5, __a6, __a7, __a8, __a9, __a10, __a11, __a12, __a13, __a14, __a15, __a16, FixedArray::from_array(__a17)) }
}

