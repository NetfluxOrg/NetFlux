// Import the functions you need from the SDKs you need
import firebase from 'firebase/compat/app';
import { initializeApp } from 'firebase/app';
import 'firebase/compat/auth';
import * as firebaseui from 'firebaseui';
import config from '../config.js'

// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: config.DB_APIKEY,
  authDomain: config.DB_AUTHDOMAIN,
  projectId: config.DB_PROJECTID,
  storageBucket: config.DB_STORAGEBUCKET,
  messagingSenderId: config.DB_MESSAGINGSENDERID,
  appId: config.DB_APPID,
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

// FirebaseUI
export const auth = firebase.auth();
var ui = new firebaseui.auth.AuthUI(firebase.auth());

var uiConfig = {
  signInFlow: 'popup',
  signInSuccessUrl: '/',
  signInOptions: [
    firebase.auth.GoogleAuthProvider.PROVIDER_ID,
    // firebase.auth.FacebookAuthProvider.PROVIDER_ID,
    // firebase.auth.TwitterAuthProvider.PROVIDER_ID,
    // firebase.auth.GithubAuthProvider.PROVIDER_ID,
    firebase.auth.EmailAuthProvider.PROVIDER_ID,
    // firebase.auth.PhoneAuthProvider.PROVIDER_ID
  ],
  tosUrl: '<your-tos-url>',
  privacyPolicyUrl: '<your-privacy-policy-url>'
};

export const signIn = () => {
  ui.start('#firebaseui-auth-container', uiConfig);
};

export default firebase;