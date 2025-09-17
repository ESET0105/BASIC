import { useState } from "react";

function App() {

  const [counter, setCounter] = useState(0);

  const incrementButtonHandler = () => {
    setCounter(counter + 1)
    // counter=counter+1 // this does not work as counter is constant
  }

  const decrementButtonHandler = () => {
    setCounter(counter - 1)
    // counter=counter+1 // this does not work as counter is constant
  }

  return (
    <div >
      <div>{counter}</div>
      <button onClick={incrementButtonHandler}>increment</button>
      <button onClick={decrementButtonHandler}>decrement</button>
    </div>
  )
}

export default App;
