type action =
  | Increment
  | Decrement
  | Reset(int)

let reducer = (state, action) => {
  switch action {
  | Increment => state + 1
  | Decrement => state - 1
  | Reset(initVal) => initVal
  }
}

let useCounterReducer = initVal => {
  let (count, dispatch) = React.useReducer(reducer, initVal)
  let increment = _event => dispatch(Increment)
  let decrement = _event => dispatch(Decrement)
  let reset = _event => dispatch(Reset(initVal))
  (count, increment, decrement, reset)
}
