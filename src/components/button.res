@react.component
let make = (~text, ~onClick) => {
  <button className="btn" onClick={onClick}> {React.string(text)} </button>
}
