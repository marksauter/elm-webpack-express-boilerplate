var http = require('http');
var path = require('path');

var express = require('express');
var webpack = require('webpack');

var webpackConfig = require('./webpack.config');
var compiler = webpack(webpackConfig);

var app = express();

// Temporary fix for hot reload with elm-webpack-loader, tricks it into thinking webpack-dev-server is in "watch" mode
process.argv.push("--watch");

app.use(require("webpack-dev-middleware")(compiler, {
    noInfo: true, publicPath: webpackConfig.output.publicPath
}));
app.use(require("webpack-hot-middleware")(compiler));

app.get('/', function(req, res) {
  res.sendFile(path.join(__dirname, 'public/index.html'));
});

var server = http.createServer(app);

var port = process.env.PORT || '3000'

server.listen(port, function() {
  console.log("Listening on http://localhost:" + port);
});
