import React, {useState} from 'react';
import TopNavBar from './NavBar.jsx'


class HomePage extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {

    return (
        <div>
            <h1> <TopNavBar /> </h1>
        </div>
      )
  }
}

export default HomePage
