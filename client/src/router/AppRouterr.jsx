import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Login from '../components/mainScreen/startPage.jsx'

const AppRouter = () => (
    <BrowserRouter>
      <div>
        <Switch>
          <Route component={Login} path="/" exact={true} />
        </Switch>
      </div>
    </BrowserRouter>
  );
  
  export default AppRouter;