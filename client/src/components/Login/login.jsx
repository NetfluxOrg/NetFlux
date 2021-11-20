import React from 'react';
import { signIn } from '../../../../firebase/index.js';

const Login = (props) => {

  return (
    <div>
      <button onClick={signIn}>
        Login
      </button>
    </div>
  );
};

export default Login;