///|
pub impl Show for Any with output(_self, _logger) {

}

///|
pub impl Eq for Any with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl ToJson for Any with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B] Show for Union2[A, B] with output(_self, _logger) {

}

///|
pub impl[A, B] Eq for Union2[A, B] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B] ToJson for Union2[A, B] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C] Show for Union3[A, B, C] with output(_self, _logger) {

}

///|
pub impl[A, B, C] Eq for Union3[A, B, C] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C] ToJson for Union3[A, B, C] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D] Show for Union4[A, B, C, D] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D] Eq for Union4[A, B, C, D] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D] ToJson for Union4[A, B, C, D] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E] Show for Union5[A, B, C, D, E] with output(
  _self,
  _logger,
) {

}

///|
pub impl[A, B, C, D, E] Eq for Union5[A, B, C, D, E] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E] ToJson for Union5[A, B, C, D, E] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F] Show for Union6[A, B, C, D, E, F] with output(
  _self,
  _logger,
) {

}

///|
pub impl[A, B, C, D, E, F] Eq for Union6[A, B, C, D, E, F] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F] ToJson for Union6[A, B, C, D, E, F] with to_json(
  _self,
) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G] Show for Union7[A, B, C, D, E, F, G] with output(
  _self,
  _logger,
) {

}

///|
pub impl[A, B, C, D, E, F, G] Eq for Union7[A, B, C, D, E, F, G] with equal(
  lhs,
  rhs,
) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G] ToJson for Union7[A, B, C, D, E, F, G] with to_json(
  _self,
) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H] Show for Union8[A, B, C, D, E, F, G, H] with output(
  _self,
  _logger,
) {

}

///|
pub impl[A, B, C, D, E, F, G, H] Eq for Union8[A, B, C, D, E, F, G, H] with equal(
  lhs,
  rhs,
) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H] ToJson for Union8[A, B, C, D, E, F, G, H] with to_json(
  _self,
) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I] Show for Union9[A, B, C, D, E, F, G, H, I] with output(
  _self,
  _logger,
) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I] Eq for Union9[A, B, C, D, E, F, G, H, I] with equal(
  lhs,
  rhs,
) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I] ToJson for Union9[A, B, C, D, E, F, G, H, I] with to_json(
  _self,
) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J] Show for Union10[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J] Eq for Union10[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J] ToJson for Union10[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K] Show for Union11[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K] Eq for Union11[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K] ToJson for Union11[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L] Show for Union12[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L] Eq for Union12[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L] ToJson for Union12[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M] Show for Union13[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M] Eq for Union13[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M] ToJson for Union13[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N] Show for Union14[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N] Eq for Union14[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N] ToJson for Union14[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O] Show for Union15[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O] Eq for Union15[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O] ToJson for Union15[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
] with to_json(_self) {
  Json::null()
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P] Show for Union16[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
  P,
] with output(_self, _logger) {

}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P] Eq for Union16[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
  P,
] with equal(lhs, rhs) {
  physical_equal(lhs, rhs)
}

///|
pub impl[A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P] ToJson for Union16[
  A,
  B,
  C,
  D,
  E,
  F,
  G,
  H,
  I,
  J,
  K,
  L,
  M,
  N,
  O,
  P,
] with to_json(_self) {
  Json::null()
}
