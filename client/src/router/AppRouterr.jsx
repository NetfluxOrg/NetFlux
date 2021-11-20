import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import TopNavBar from '../components/Homepage/NavBar.jsx'

const AppRouter = () => (
    <BrowserRouter>
      <div>
        <Switch>
          <Route component={TopNavBar} path="/" exact={true} />
        </Switch>
      </div>
    </BrowserRouter>
  );
  
  export default AppRouter;