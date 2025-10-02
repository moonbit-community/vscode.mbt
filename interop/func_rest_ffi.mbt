///|
extern "js" fn func0rest_from(f : (Array[Any]) -> Any) -> Func0Rest[Any, Any] =
  #| f => (...rest) => f(rest)
  #|

///|
extern "js" fn func0rest_into(fr : Func0Rest[Any, Any]) -> (Array[Any]) -> Any =
  #| f => (rest) => f(...rest)

///|
extern "js" fn func1rest_from(
  f : (Any, Array[Any]) -> Any,
) -> Func1Rest[Any, Any, Any] =
  #| f => (a1, ...rest) => f(a1, rest)
  #|

///|
extern "js" fn func1rest_into(
  fr : Func1Rest[Any, Any, Any],
) -> (Any, Array[Any]) -> Any =
  #| f => (a1, rest) => f(a1, ...rest)

///|
extern "js" fn func2rest_from(
  f : (Any, Any, Array[Any]) -> Any,
) -> Func2Rest[Any, Any, Any, Any] =
  #| f => (a1, a2, ...rest) => f(a1, a2, rest)
  #|

///|
extern "js" fn func2rest_into(
  fr : Func2Rest[Any, Any, Any, Any],
) -> (Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, rest) => f(a1, a2, ...rest)

///|
extern "js" fn func3rest_from(
  f : (Any, Any, Any, Array[Any]) -> Any,
) -> Func3Rest[Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, ...rest) => f(a1, a2, a3, rest)
  #|

///|
extern "js" fn func3rest_into(
  fr : Func3Rest[Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, rest) => f(a1, a2, a3, ...rest)

///|
extern "js" fn func4rest_from(
  f : (Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func4Rest[Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, ...rest) => f(a1, a2, a3, a4, rest)
  #|

///|
extern "js" fn func4rest_into(
  fr : Func4Rest[Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, rest) => f(a1, a2, a3, a4, ...rest)

///|
extern "js" fn func5rest_from(
  f : (Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func5Rest[Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, ...rest) => f(a1, a2, a3, a4, a5, rest)
  #|

///|
extern "js" fn func5rest_into(
  fr : Func5Rest[Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, rest) => f(a1, a2, a3, a4, a5, ...rest)

///|
extern "js" fn func6rest_from(
  f : (Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, ...rest) => f(a1, a2, a3, a4, a5, a6, rest)
  #|

///|
extern "js" fn func6rest_into(
  fr : Func6Rest[Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, rest) => f(a1, a2, a3, a4, a5, a6, ...rest)

///|
extern "js" fn func7rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, rest)
  #|

///|
extern "js" fn func7rest_into(
  fr : Func7Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, rest) => f(a1, a2, a3, a4, a5, a6, a7, ...rest)

///|
extern "js" fn func8rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, rest)
  #|

///|
extern "js" fn func8rest_into(
  fr : Func8Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, ...rest)

///|
extern "js" fn func9rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, rest)
  #|

///|
extern "js" fn func9rest_into(
  fr : Func9Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, ...rest)

///|
extern "js" fn func10rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, rest)
  #|

///|
extern "js" fn func10rest_into(
  fr : Func10Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any],
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ...rest)

///|
extern "js" fn func11rest_from(
  f : (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any,
) -> Func11Rest[Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, rest)
  #|

///|
extern "js" fn func11rest_into(
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
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, ...rest)

///|
extern "js" fn func12rest_from(
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
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, rest)
  #|

///|
extern "js" fn func12rest_into(
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
) -> (Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Any, Array[Any]) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, ...rest)

///|
extern "js" fn func13rest_from(
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
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, rest)
  #|

///|
extern "js" fn func13rest_into(
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
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, ...rest)

///|
extern "js" fn func14rest_from(
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
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, rest)
  #|

///|
extern "js" fn func14rest_into(
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
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, ...rest)

///|
extern "js" fn func15rest_from(
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
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, rest)
  #|

///|
extern "js" fn func15rest_into(
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
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, ...rest)

///|
extern "js" fn func16rest_from(
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
] =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, ...rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, rest)
  #|

///|
extern "js" fn func16rest_into(
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
) -> Any =
  #| f => (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, rest) => f(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, ...rest)
