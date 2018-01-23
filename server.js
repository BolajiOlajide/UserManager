require('dotenv').config()

var app = require('./app');
var port = parseInt(process.env.PORT, 10) || 3000;

var server = app.listen(port, function() {
  console.log('Express server listening on port ' + port);
});