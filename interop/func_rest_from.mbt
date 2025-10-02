///|
pub fn[R, E] Func0Rest::from(f : (Array[E]) -> R) -> Func0Rest[R, E] {
  coerce(func0rest_from)(f)
}

///|
pub fn[R, E, A1] Func1Rest::from(
  f : (A1, Array[E]) -> R,
) -> Func1Rest[R, E, A1] {
  coerce(func1rest_from)(f)
}

///|
pub fn[R, E, A1, A2] Func2Rest::from(
  f : (A1, A2, Array[E]) -> R,
) -> Func2Rest[R, E, A1, A2] {
  coerce(func2rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3] Func3Rest::from(
  f : (A1, A2, A3, Array[E]) -> R,
) -> Func3Rest[R, E, A1, A2, A3] {
  coerce(func3rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4] Func4Rest::from(
  f : (A1, A2, A3, A4, Array[E]) -> R,
) -> Func4Rest[R, E, A1, A2, A3, A4] {
  coerce(func4rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5] Func5Rest::from(
  f : (A1, A2, A3, A4, A5, Array[E]) -> R,
) -> Func5Rest[R, E, A1, A2, A3, A4, A5] {
  coerce(func5rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6] Func6Rest::from(
  f : (A1, A2, A3, A4, A5, A6, Array[E]) -> R,
) -> Func6Rest[R, E, A1, A2, A3, A4, A5, A6] {
  coerce(func6rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7] Func7Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, Array[E]) -> R,
) -> Func7Rest[R, E, A1, A2, A3, A4, A5, A6, A7] {
  coerce(func7rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8] Func8Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, Array[E]) -> R,
) -> Func8Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8] {
  coerce(func8rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9] Func9Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, Array[E]) -> R,
) -> Func9Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9] {
  coerce(func9rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10] Func10Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, Array[E]) -> R,
) -> Func10Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10] {
  coerce(func10rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11] Func11Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, Array[E]) -> R,
) -> Func11Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11] {
  coerce(func11rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12] Func12Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, Array[E]) -> R,
) -> Func12Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12] {
  coerce(func12rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13] Func13Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, Array[E]) -> R,
) -> Func13Rest[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13] {
  coerce(func13rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14] Func14Rest::from(
  f : (A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, Array[E]) -> R,
) -> Func14Rest[
  R,
  E,
  A1,
  A2,
  A3,
  A4,
  A5,
  A6,
  A7,
  A8,
  A9,
  A10,
  A11,
  A12,
  A13,
  A14,
] {
  coerce(func14rest_from)(f)
}

///|
pub fn[R, E, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15] Func15Rest::from(
  f : (
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    A7,
    A8,
    A9,
    A10,
    A11,
    A12,
    A13,
    A14,
    A15,
    Array[E],
  ) -> R,
) -> Func15Rest[
  R,
  E,
  A1,
  A2,
  A3,
  A4,
  A5,
  A6,
  A7,
  A8,
  A9,
  A10,
  A11,
  A12,
  A13,
  A14,
  A15,
] {
  coerce(func15rest_from)(f)
}

///|
pub fn[
  R,
  E,
  A1,
  A2,
  A3,
  A4,
  A5,
  A6,
  A7,
  A8,
  A9,
  A10,
  A11,
  A12,
  A13,
  A14,
  A15,
  A16,
] Func16Rest::from(
  f : (
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    A7,
    A8,
    A9,
    A10,
    A11,
    A12,
    A13,
    A14,
    A15,
    A16,
    Array[E],
  ) -> R,
) -> Func16Rest[
  R,
  E,
  A1,
  A2,
  A3,
  A4,
  A5,
  A6,
  A7,
  A8,
  A9,
  A10,
  A11,
  A12,
  A13,
  A14,
  A15,
  A16,
] {
  coerce(func16rest_from)(f)
}
