import React, { Fragment } from "react";
import styles from "./NavBar.module.css"
import { BrowserRouter as Router, Route, Link, Switch } from "react-router-dom";
import Trending from '../TrendingList.jsx'
import Categories from '../Categories.jsx'
import Profile from '../Profile.jsx'
import HomePage from '../HomePage/Homepage.jsx'


export default function TopNavBar() {
  return (
   <Router>
      <nav>
      <div id={styles.menuouter}>
      <div class={styles.table}>
      <ul id={styles.horizontallist}>
      <li><Link to={"/"}>Home</Link></li>
      <li><Link to={"/Trending"}>Trending</Link></li>
      <li><Link to={"/Categories"}>Categories</Link></li>
      <li><Link to={"/Profile"}>Profile</Link></li>
    </ul>
  </div>
</div>
      </nav>
    <Switch>
      <Route path="/Home" component={HomePage} />
      <Route path="/Trending" component={Trending} />
      <Route path="/Categories"  component={Categories} />
      <Route path="/Profile"  component={Profile}/>
    </Switch>
</Router>

  );
}

