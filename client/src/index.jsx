import React, {useState} from 'react';
import ReactDOM from 'react-dom';


import HomePage from './components/Homepage/Homepage.jsx'



class App extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <HomePage />
      )
  }
}

ReactDOM.render(<App />,document.getElementById('App'));
