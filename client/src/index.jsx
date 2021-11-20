import React, {useState} from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios'



class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      text: '',
      author: ''
    }
    this.getQuotes = this.getQuotes.bind(this)
  }

componentDidMount() {
  this.getQuotes()
}
 
getQuotes = () => {
  axios.get('/a')
    .then(response => {
      var info = response.data

        this.setState({
          text: info[0].text,
          author: info[0].author
      });
  })
  .catch(error => {
    console.log(error)
  });

}

  render() {
    return (
      
      <div>
        <h1> Inspirational Quote of the Day!</h1>
        <button onclick={this.getQuotes}> sd </button>
           {this.state.text}
           </div>

      )
  }
}

ReactDOM.render(<App />,document.getElementById('App'));
