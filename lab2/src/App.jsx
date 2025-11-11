import { useState } from "react";
import "./App.css";

function App() {
  const [inputText, setInputText] = useState("");

  const handleInputChange = (e) => {
    setInputText(e.target.value);
  };

  return (
    <div className="container">
      <h2 className="title">Live Text Update</h2>
      <form onSubmit={(e) => e.preventDefault()}>
        <label htmlFor="inputArea" className="label">
          Enter your message:
        </label>
        <br />
        <textarea
          id="inputArea"
          rows="5"
          cols="60"
          value={inputText}
          onChange={handleInputChange}
          placeholder="Type here..."
          className="textarea"
        />
      </form>
      <div className="output">
        <strong>Your Text:</strong>
        <p className="output-text">{inputText}</p>
      </div>
    </div>
  );
}

export default App;
