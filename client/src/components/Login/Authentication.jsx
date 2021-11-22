import React from 'react';
import { useState, useEffect } from 'react';
import firebase from '../../../../firebase/index.js';
import Login from './Login.jsx';
import LoginSuccess from './LoginSuccess.jsx';
import HomePage from '../Home/HomePage/Homepage.jsx'

export default function Authentication(props) {
  const [user, setUser] = useState(null);

  useEffect(() => {
    firebase.auth().onAuthStateChanged(user => {
      setUser(user);
      if (user) {
        console.log('🦁 current logged in user info: ', user);
        const username = user.multiFactor.user.displayName;
        const email = user.multiFactor.user.email;
        const userPhoto = user.multiFactor.user.photoURL;
        const userId = user.multiFactor.user.uid;
        const userData = {task: 'signin', username: username, email: email, userPhoto: userPhoto, userId: userId};
        props.addUserState(userData);
      }
    });
  }, []);

      <HomePage user={user} />
  return (
        <div id="firebaseui-auth-container">
          {user ? <LoginSuccess user={user} signOut={props}/> : <Login signing={useEffect}/>}
        </div>
  );
}
