import React from 'react';
import { auth } from '../../../../firebase/index.js';

export default function LoginSuccess(props) {
  return (
    <div>
      <h1>Hello, {props.user.displayName}</h1>
      <img src={props.user.photoURL} alt="userPhoto" />
      <button onClick={() => { auth.signOut(); props.signOut.addUserState({ task: 'signout' }); }}>Sign out</button>
    </div>
  );
}