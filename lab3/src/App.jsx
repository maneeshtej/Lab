import React, { useState, useEffect } from "react";
import "./App.css";

function App() {
  const [emailInput, setEmailInput] = useState("");
  const [validEmail, setValidEmail] = useState(null);
  const [feedbackMessage, setFeedbackMessage] = useState("");

  // Validate automatically whenever input changes
  useEffect(() => {
    if (emailInput === "") {
      setValidEmail(null);
      setFeedbackMessage("");
      return;
    }

    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (regex.test(emailInput)) {
      setValidEmail(true);
      setFeedbackMessage("Valid email address!");
    } else {
      setValidEmail(false);
      setFeedbackMessage("Please provide a valid email address.");
    }
  }, [emailInput]);

  const handleInputChange = (e) => {
    setEmailInput(e.target.value);
  };

  return (
    <div className="App">
      <h1>Email Validation (Live)</h1>

      <div style={{ marginBottom: "20px" }}>
        <label htmlFor="emailInput">Enter email:</label>
        <input
          type="text"
          id="emailInput"
          value={emailInput}
          onChange={handleInputChange}
          style={{
            border:
              validEmail === null
                ? "2px solid gray"
                : `2px solid ${validEmail ? "green" : "red"}`,
            padding: "8px",
            fontSize: "16px",
            marginLeft: "10px",
          }}
        />
      </div>

      {validEmail !== null && (
        <div
          style={{
            color: validEmail ? "green" : "red",
            fontSize: "14px",
          }}
        >
          {feedbackMessage}
          <br />
        </div>
      )}
    </div>
  );
}

export default App;
