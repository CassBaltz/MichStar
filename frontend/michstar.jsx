const React = require('react');
const ReactDOM = require('react-dom');

const App = React.createClass({
  render: function () {
    return (
      <div>
        <h1>Hello from the App</h1>
      </div>
    );
  }
});

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
      <App />,
      document.getElementById('content')
  );
})
