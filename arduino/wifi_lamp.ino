#include <ESP8266WiFi.h>          // ESP8266 Core WiFi Library

#include <DNSServer.h>            // Local DNS Server used for redirecting all requests to the configuration portal
#include <ESP8266WebServer.h>     // Local WebServer used to serve the configuration portal
#include <WiFiManager.h>          // https://github.com/tzapu/WiFiManager WiFi Configuration Magic

#include <ESP8266mDNS.h>


MDNSResponder mdns;

ESP8266WebServer server(80);

const int output = 2;
long brightness = 1023;


void handleRoot() {
  char temp[1000];
  int sec = millis() / 1000;
  int min = sec / 60;
  int hr = min / 60;
  float bFloat = float(brightness) / 1023;
  int b1 = (int)bFloat;
  int b2 = (int)((bFloat - b1) * 1000);

  snprintf (temp, 1000,

"<html>\
  <head>\
    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\
    <title>Wi-Fi Lamp</title>\
    <link href=\"https://cdn.rawgit.com/damianmoore/wifi-lamp/47a3120/style.css\" rel=\"stylesheet\" type=\"text/css\" \\>\
    <!--link href=\"http://localhost:8000/style.css\" rel=\"stylesheet\" type=\"text/css\" \\-->\
  </head>\
  <body>\
    <div id=\"app\"></div>\
    <script type=\"text/javascript\">\
      var configVars = {\
        brightnessRaw: %02d,\
        brightness: '%d.%d',\
        uptime: '%02d:%02d:%02d'\
      };\
    </script>\
    <script src=\"https://cdn.jsdelivr.net/react/0.13.3/JSXTransformer.js\" type=\"text/javascript\"></script>\
    <script src=\"https://cdn.jsdelivr.net/react/0.13.3/react.min.js\" type=\"text/javascript\"></script>\
    <script src=\"https://cdn.rawgit.com/damianmoore/wifi-lamp/187938e/script.js\" type=\"text/jsx\"></script>\
    <!--script src=\"http://localhost:8000/script.js\" type=\"text/jsx\"></script-->\
  </body>\
</html>",

    brightness, b1, b2, hr, min % 60, sec % 60
  );
  server.send(200, "text/html", temp);
}


void handleApi() {
  Serial.println("handleApi");
  String val = server.arg("val");
  Serial.println(val);
  char byte_buffer[val.length()+1];
  val.toCharArray(byte_buffer, val.length()+1);

  brightness = (atof(byte_buffer) * 1024) - 1;
  if (brightness < 0) {
    brightness = 0;
  }
  else if (brightness > 1023) {
    brightness = 1023;
  }

  analogWrite(output, 1023 - brightness);
  server.send(200, "text/plain", "OK");
}


void handleNotFound() {
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET) ? "GET" : "POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";

  for (uint8_t i = 0; i < server.args(); i++) {
    message += " " + server.argName (i) + ": " + server.arg (i) + "\n";
  }

  server.send(404, "text/plain", message);
}


void setup (void) {
  pinMode(output, OUTPUT);
  analogWrite(output, 1023 - brightness);
  Serial.begin(115200);
  Serial.println("Starting...");
  WiFiManager wifiManager;
  wifiManager.autoConnect();

  server.on("/", handleRoot);
  server.on("/api/", handleApi);
  server.onNotFound (handleNotFound);
  server.begin();
  Serial.println("HTTP server started");
}


void loop (void) {
  mdns.update();
  server.handleClient();
}
