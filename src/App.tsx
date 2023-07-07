import { useState } from 'react';
import './App.css';

const App = () => {
  const [J, setJ] = useState(0);
  const [K, setK] = useState(0);

  return (
    <>
      <h1>Collatz Cycle Search Game</h1>
      <header>
        <label for="J">Select J</label>
        <input id="J" type="number" value={J} onChange={setJ}/>
        <label for="K">Select K</label>
        <input id="K" type="number" value={K} onChange={setK}/>
      </header>
      <main>
      </main>
    </>
  )
}

export default App
