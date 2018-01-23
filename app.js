var express = require('express');
var app = express();
var db = require('./db');

var UserController = require('./user/UserController');
app.use('/users', UserController);

app.get('/', function(req, res) {
  res.status(200).send('Welcome to the User Manager');
})

module.exports = app;
