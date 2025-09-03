import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0) // a hook .... 
  //count = 0;
  //increment

  return (
    <>
      <h1>Counter App</h1>
      <div>
        <h2 id='a'>0</h2>
        <button onClick={() => {
          const element = document.getElementById('a');
          var curr = parseInt(element.textContent);
          element.textContent = curr + 1;
        }}>increment</button>

        <button onClick={() => {
          const element = document.getElementById('a');
          var curr = parseInt(element.textContent);
          element.textContent = curr - 1;
        }}>decrement</button>
      </div>


    </>
  )
}

export default App
