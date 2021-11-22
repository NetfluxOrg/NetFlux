import React from 'react';
import TopNavBar from '../Navbar/NavBar.jsx'
import SearchBar from '../SearchBar/SearchBar.jsx'
import styles from './HomePage.module.css'

class HomePage extends React.Component {
  constructor(props) {
    super(props)

    //logged in user email
    this.state = {
      name: props.name,
      email: props.email
    }
  }

  render() {
    return (
        <div>
                <h1> <TopNavBar /> </h1>
            <h1> <SearchBar /> </h1>



{/* hardcoded for now, built map function here on movies rettrieved */}

<div className={styles.title}> Trending {this.state.name} </div>
  <div class={styles.box}>
      Movie #1
  </div>
  <div class={styles.box}>
      Movie #2
  </div>
  <div class={styles.box}>
      Movie #3
  </div>

  <div className={styles.title}> Recommended {this.state.name} </div>
  <div class={styles.box}>
      Movie #1
  </div>
  <div class={styles.box}>
      Movie #2
  </div>
  <div class={styles.box}>
      Movie #3
  </div>

        </div>
      )
  }
}

export default HomePage
