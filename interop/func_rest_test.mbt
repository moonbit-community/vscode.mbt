///|
extern "js" fn operate(
  op : @interop.Func0Rest[Int32, Int32],
  lhs : Int32,
  rhs : Int32,
) -> Int32 =
  #| (op, lhs, rhs) => op(lhs, rhs)

///|
test {
  let op = @interop.Func0Rest::from(fn(xs : Array[Int32]) -> Int32 {
    let lhs = xs[0]
    let rhs = xs[1]
    lhs + rhs
  })
  inspect(operate(op, 1, 2), content="3") // expect: 3
}

///|
test "VSCode FuncNRest integration" {
  // Test that we can create Func0Rest for command callbacks
  let _callback = @interop.Func0Rest::from(fn(
    _args : Array[@interop.Any],
  ) -> @interop.Any {
    @interop.coerce("Command executed")
  })

  // Test that we can create Func1Rest for message functions
  let _message_func = @interop.Func1Rest::from(fn(
    _message : String,
    _items : Array[String],
  ) -> @interop.Any {
    @interop.coerce("Message shown")
  })

  // Test that we can create Func2Rest for provider functions  
  let _provider_func = @interop.Func2Rest::from(fn(
    _selector : @interop.Any,
    _provider : @interop.Any,
    _triggers : Array[String],
  ) -> @interop.Any {
    @interop.coerce("Provider registered")
  })

  // If we get to this point, all FuncNRest types were created successfully
  inspect(
    "All FuncNRest types created successfully",
    content="All FuncNRest types created successfully",
  )
}
