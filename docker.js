var http = require('http'),
  nodestatic = require('node-static'),
  file = new nodestatic.Server('./');
http.createServer(function(req, res) {
  file.serve(req, res);
}).listen(49080);
