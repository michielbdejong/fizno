var knowledgeDir = './knowledge/',
  http = require('http'),
  nodestatic = require('node-static'),
  fs = require('fs'),
  file = new nodestatic.Server(knowledgeDir);
http.createServer(function(req, res) {
  if (req.url.substr(-1) === '/') {
    fs.readdir(knowledgeDir+req.url.replace('..', ''), function(err, list) {
      var i;
      res.writeHead(200, {
        'Content-Type': 'text/html'
      });
      res.write('<ul>');
      for(i=0; i<list.length; i++) {
        res.write('<li><a href="'+list[i]+'">'+list[i]+'</a>');
      }
      res.end('</ul>');
    });
  } else {
    file.serve(req, res);
  }
}).listen(49080);
