function getUrl(url) {
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open('GET', url, false);
  xmlhttp.send();
};


var WifiLampApp = React.createClass({
  getInitialState: function() {
    var state = {
      brightness: configVars.brightness,
    };
    return state;
  },
  setBrightness: function(val) {
    getUrl('/api/?val=' + val);
    this.setState({brightness: val});
  },
  handleRangeChange: function(e) {
    this.setBrightness(e.currentTarget.valueAsNumber);
  },
  render: function() {
    return (
      <div>
        <h1>WiFi Lamp</h1>
        <div id="bulb">
          <img id="bulb-dark" src="https://cdn.rawgit.com/damianmoore/wifi-lamp/master/bulb_dark.svg" />
          <img id="bulb-light" src="https://cdn.rawgit.com/damianmoore/wifi-lamp/master/bulb_light.svg" style={{opacity: this.state.brightness}} />
        </div>
        <p>
          <button type="button" onClick={this.setBrightness.bind(null, 0)}>OFF</button>
          <button type="button" onClick={this.setBrightness.bind(null, 1)}>ON</button>
        </p>
        <p>
          <input id="slide" type="range" min="0" max="1.0" step="0.001" defaultValue={this.state.brightness} value={this.state.brightness} onChange={this.handleRangeChange} />
        </p>
        <p>Brightness: {parseInt(this.state.brightness * 100)}%</p>
      </div>
    );
  }
});


React.render(
  <WifiLampApp />,
  document.getElementById('app')
);
