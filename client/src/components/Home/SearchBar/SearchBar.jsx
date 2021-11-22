import React from 'react';
import styles from './SearchBar.module.css';

const SearchBar = (props) => {

  return (
    <div className={styles.searchbar}>
         <form action="/" method="get">
        <label htmlFor="header-search">
            <span className="visually-hidden"></span>
        </label>
        <input
            type="text"
            id="header-search"
            placeholder="Search Movie Here..."
            name="s"
        />
        <button type="submit">Search</button>
    </form>
    </div>
  );
};

export default SearchBar;