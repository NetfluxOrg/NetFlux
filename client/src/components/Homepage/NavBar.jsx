import React from 'react'
import styles from './NavBar.module.css'

const TopNavBar = () => {
  return (
    <div>
    <ul className={styles.container}>
      <li><a href="Trending">Home</a></li>
      <li><a href="Categories">About</a></li>
      <li>SearchBar</li>
    </ul>
  </div>
  );
};
  
export default TopNavBar;
