///|
extern "js" fn operate(op : Func0Rest[Int, Int], lhs : Int, rhs : Int) -> Int =
  #| (op, lhs, rhs) => op(lhs, rhs)

///|
test {
  let op = Func0Rest::from(fn(xs : Array[Int]) -> Int {
    let lhs = xs[0]
    let rhs = xs[1]
    lhs + rhs
  })
  inspect(operate(op, 1, 2), content="3") // expect: 3
}

///|
test "VSCode FuncNRest integration" {
  // Test that we can create Func0Rest for command callbacks
  let _callback = Func0Rest::from(fn(_args : Array[Any]) -> Any {
    coerce("Command executed")
  })

  // Test that we can create Func1Rest for message functions
  let _message_func = Func1Rest::from(fn(
    _message : String,
    _items : Array[String],
  ) -> Any {
    coerce("Message shown")
  })

  // Test that we can create Func2Rest for provider functions  
  let _provider_func = Func2Rest::from(fn(
    _selector : Any,
    _provider : Any,
    _triggers : Array[String],
  ) -> Any {
    coerce("Provider registered")
  })

  // If we get to this point, all FuncNRest types were created successfully
  inspect(
    "All FuncNRest types created successfully",
    content="All FuncNRest types created successfully",
  )
}
