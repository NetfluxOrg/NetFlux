import React, {useState} from 'react';
import { auth } from '../../../../firebase/index.js';
import HomePage from '../Home/HomePage/Homepage.jsx'

export default function LoginSuccess(props) {

  //useremail
  const [email, setEmail] = useState(props.user.email);
  //username
  const [name, setName] = useState(props.user.displayName);

  return (
    <div>
      <h1>Weclome Back, {name} || {email}</h1>
      <img src={props.user.photoURL} alt="userPhoto" />
      <button onClick={() => { auth.signOut(); props.signOut.addUserState({ task: 'signout' }); }}>Sign out</button>
      <div> <HomePage email={email} name={name}/> </div>
    </div>
  )
}