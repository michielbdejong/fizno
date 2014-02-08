var http = require('http'),
  nodestatic = require('node-static'),
  file = new nodestatic.Server('./public/');
  //res.end('<iframe width="640" height="390" src="//www.youtube.com/embed/AuX7nPBqDts" frameborder="0" allowfullscreen></iframe>');
http.createServer(function(req, res) {
  file.serve(req, res);
}).listen(49080);
