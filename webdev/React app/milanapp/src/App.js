
import './App.css';
import { useState } from 'react';

function App(props) {
  const ContainerStyle = {

  };
  const [counter, setcounter] = useState(0);
  const buttonhandler = () => {
    setcounter(counter + 1)
  };
  const buttonhandler2 = () => {
    setcounter(counter - 1)
  };


  return (
    <div className='container'
      style={ContainerStyle}>
      <p style={{ fontSize: "200px" }}>  {counter} </p>
      <div>
        <button style={{ fontSize: "50px" }} onClick={buttonhandler}> increment </button>
      </div>
      <div>
        <button style={{ fontSize: "50px" }} onClick={buttonhandler2}> decrement </button>
      </div>
    </div>
  );
}

export default App;
