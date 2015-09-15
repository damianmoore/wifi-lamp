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
    var rangeButtons = [];
    for (var i = 0; i <= 10; i++) {
      rangeButtons.push(<button type="button" onClick={this.setBrightness.bind(null, i / 10)}>{i}0%</button>);
    }
    return (
      <div>
        <h1>Wi-Fi Lamp</h1>
        <p>Uptime: {configVars.uptime}</p>
        <p>
          <button type="button" onClick={this.setBrightness.bind(null, 0)}>OFF</button>
          <button type="button" onClick={this.setBrightness.bind(null, 1)}>ON</button>
        </p>
        <p>
          {rangeButtons}
        </p>
        <p>
          <input id="slide" type="range" min="0" max="1.0" step="0.001" defaultValue={this.state.brightness} value={this.state.brightness} onChange={this.handleRangeChange} />
        </p>
        <p>State: {this.state.brightness}</p>
      </div>
    );
  }
});


React.render(
  <WifiLampApp />,
  document.getElementById('app')
);
