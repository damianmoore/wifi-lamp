function getUrl(url) {
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open('GET', url, true);
  xmlhttp.send();
};


var app = document.getElementById('app');

React.render(
  (
    <div>
      <h1>Wi-Fi Lamp</h1>
      <p>Uptime: {configVars.uptime}</p>
      <p>
        <button type="button" onClick={getUrl.bind(null, '/on')}>ON</button>
        <button type="button" onClick={getUrl.bind(null, '/off')}>OFF</button>
      </p>
      <p>State: {configVars.lightState}</p>
    </div>
  ),
  app
);
