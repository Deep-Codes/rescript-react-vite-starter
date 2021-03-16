%%raw(`import './index.css';`)

module App = {
  @react.component
  let make = () => {
    let (count, increment, decrement, reset) = UseCounterReducer.useCounterReducer(0)
    <div className="page">
      <img src="../../logo.svg" />
      <h1> {React.string("Counter App")} </h1>
      <h1 className="value"> {React.string(count->Belt.Int.toString)} </h1>
      <Button text="Increment" onClick={_e => increment()} />
      <Button text="Decrement" onClick={_e => decrement()} />
      <Button text="Reset" onClick={_e => reset()} />
    </div>
  }
}

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => Js.log("Error: could not find react element")
}
