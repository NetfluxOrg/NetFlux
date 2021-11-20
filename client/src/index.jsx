import React, {useState} from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios'
import Authentication from './Login/Authentication.jsx'


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      loggedInUser: {},
    }
  }

  addUserState(userInfo) {
    // console.log('adding user to state')
    if (userInfo.task === 'signin') {
      this.setState({
        loggedInUser: userInfo,
      }, () => {
        console.log('🦊 Current Logged In User Info: ', this.state.loggedInUser);
      });
    } else if (userInfo.task === 'signout') {
      this.setState({
        loggedInUser: {}
      }, () => {
        console.log(this.state.loggedInUser);
      });
    }
  }

  render() {
    return (
      <div>
        <h1> BOILER PLATE</h1>
        <Authentication addUserState={this.addUserState.bind(this)}/>
           </div>

      )
  }
}

ReactDOM.render(<App />,document.getElementById('App'));
