const React = require('react');
const ReactDOM = require('react-dom');

const ReactRouter = require('react-router');
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;
const hashHistory = ReactRouter.hashHistory;

const App = require('./components/App');
const LoginForm = require('./components/LoginForm');

const SessionStore = require('./stores/session_store');
const SessionActions = require('./actions/session_actions');
const RestaurantActions = require('./actions/restaurant_actions');
const RestaurantApiUtil = require('./util/restaurant_api_util');

const RestaurantIndex = require('./components/restaurant_index');
const RestaurantShow = require('./components/restaurant_show');

const appRouter = (
  <Router history={ hashHistory }>
    <Route path="/" component={ App }>
      <IndexRoute component={ RestaurantIndex } />
      <Route path="/restaurants" component={ RestaurantIndex } />
      <Route path="/login" component={ LoginForm } />
      <Route path="/signup" component={ LoginForm } />
    </Route>
  </Router>
);

function _ensureLoggedIn(nextState, replace) {
  // We don't want users to be able to visit our 'new' or 'review' routes
  // if they haven't already signed in/up. Let's redirect them!
  // `replace` is like a redirect. It replaces the current entry
  // into the history (and the hashFragment), so the Router is forced
  // to re-route.
    if (!SessionStore.isUserLoggedIn()) {
      replace('/login');
    }
}

document.addEventListener('DOMContentLoaded', function(){
  if(window.currentUser){
    SessionActions.receiveCurrentUser(window.currentUser);
  }
  const root = document.getElementById('content');
  ReactDOM.render(appRouter, root);
});

window.RestaurantActions = RestaurantActions;
